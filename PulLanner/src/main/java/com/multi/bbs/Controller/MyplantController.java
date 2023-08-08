package com.multi.bbs.Controller;


import java.io.IOException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.time.LocalDate;
import java.time.ZoneId;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.bbs.manage.model.service.ManageBoardService;
import com.multi.bbs.manage.model.vo.Managelist;
import com.multi.bbs.manage.model.vo.Plantreply;
import com.multi.bbs.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j

@Controller
public class MyplantController{
	private static final Logger logger = LoggerFactory.getLogger(PlantShopController.class);
	final static private String savePath = "c:\\bbs\\";
	
	@Autowired
	private ManageBoardService service;
	
	
	/*@RequestMapping(value = "/Myplant", method = RequestMethod.GET)
	public String MyPlant( Model model) {
	Member loginMember = memberService.login("admin", "1212");
		session.setAttribute("loginMember", loginMember);
		test();
		return "5.1_myplant-main"; 
	}	*/

	@GetMapping(value = "/Plantwrite")
	public String PlantWrite( Model model) {
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
//		test();
		return "5.2_myplant-gwanri";
	}
	
	
		
	@PostMapping(value = "/Plantwrite")
	public String Plantwrite(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Managelist managelist,
			@RequestParam("startdate_date") @DateTimeFormat(iso = ISO.DATE) Date startdate, 
			@RequestParam("waterdate_date") @DateTimeFormat(iso = ISO.DATE) Date waterdate,
			@RequestParam("upfile") MultipartFile upfile
			) {

		managelist.setMno(loginMember.getMNo());
		managelist.setStartdate(startdate);		
		managelist.setWaterdate(waterdate);		
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String renameFileName = service.saveFile(upfile, savePath); 
			
			if(renameFileName != null) {
				managelist.setOriginalimg(upfile.getOriginalFilename());
				managelist.setRenamedimg(renameFileName);
			}
		}
		
		System.out.println(managelist);
		int result = service.saveManagelist(managelist);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록 되었습니다.");
			model.addAttribute("location", "/Myplant");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/Myplant");
		}
		
		return "common/msg";
	}
	
	@GetMapping("/Myplant")
	public String Myplant(Model model, @RequestParam Map<String, String> paramMap,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {

		if(loginMember == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		List<Managelist> list = service.selectMANAGELISTList(loginMember.getMNo());
		model.addAttribute("list", list);
		return "5.1_myplant-main";
	}
	
	
	
	
	@GetMapping("/MyplantView")
	public String MyplantView(Model model, int bno, @SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		if(loginMember == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		Managelist item = service.selectMANAGELIST(bno);
		System.out.println("!!!"+item);
		model.addAttribute("item", item);
		model.addAttribute("replyList", item.getPlantreplylist());
		
		var now = new Date();
		
		Date date = item.getStartdate();
		Date date2 = item.getWaterdate();
		long diffDay = (now.getTime() - date2.getTime()) / (24*60*60*1000);
		long startDay = (now.getTime() - date.getTime()) / (24*60*60*1000);

		model.addAttribute("diffDay", diffDay);
		model.addAttribute("startDay", startDay);
		// 댓글 리스트 코드 추가 필요

		return "5.3_plant-main-in";
		
		
	}
	
	
	
	
	
	@GetMapping("/Managelist/file/{fileName}") // 이미지 출력 경로 ex) 3.3_plant-parcel-out.jsp  42번째줄
    @ResponseBody
    public Resource downloadImage(@PathVariable("fileName") String fileName, Model model) throws IOException {
        return new UrlResource("file:" + savePath + fileName);
    }

    @RequestMapping("/Managelist/fileDown")
    public ResponseEntity<Resource> fileDown(@RequestParam("oriname") String oriname,
            @RequestParam("rename") String rename, @RequestHeader(name = "user-agent") String userAgent) {
        try {
            Resource resource = new UrlResource("file:" + savePath + rename + "");
            String downName = null;

            // 인터넷 익스플로러 인 경우
            boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;

            if (isMSIE) { // 익스플로러 처리하는 방법
                downName = URLEncoder.encode(oriname, "UTF-8").replaceAll("\\+", "%20");
            } else {
                downName = new String(oriname.getBytes("UTF-8"), "ISO-8859-1"); // 크롬
            }
            return ResponseEntity.ok()
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
                    .header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
                    .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString()).body(resource);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
    }

	
    @RequestMapping("/pplantreply")
	public String writePlantReply(Model model, int bno,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Plantreply plantreply
			) {
    	plantreply.setBno(bno);
    	plantreply.setMno(loginMember.getMNo());
		
		log.info("리플 작성 요청 plantreply : " + plantreply);
		
		int result = service.savePlantReply(plantreply);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록되었습니다.");
		}else {
			model.addAttribute("msg", "리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/MyplantView?bno="+plantreply.getBno());
		return "common/msg";
	}
    
    @RequestMapping("/pplantreplyDel")
	public String deletePlantReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int pno, int bno
			){
		log.info("리플 삭제 요청 : "+ pno);
		int result = service.deletePlantReply(pno);
		
		if(result > 0) {
			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/MyplantView?bno=" + bno);
		return "/common/msg";
	}
    
    
}
	
