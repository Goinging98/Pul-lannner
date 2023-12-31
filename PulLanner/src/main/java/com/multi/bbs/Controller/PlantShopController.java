package com.multi.bbs.Controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.UrlResource;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.member.model.vo.Member;
import com.multi.bbs.plantSearch.model.service.plantSearchService;
import com.multi.bbs.plantSearch.model.vo.DryGardenDtl;
import com.multi.bbs.plantSearch.model.vo.FlowerDtl;
import com.multi.bbs.plantSearch.model.vo.GardenDtl;
import com.multi.bbs.plantSearch.model.vo.PlantNameVO;
import com.multi.bbs.plantShop.model.service.PlantShopService;
import com.multi.bbs.plantShop.model.vo.PlantparcelReply;
import com.multi.bbs.plantShop.model.vo.Plantshop;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PlantShopController {
	
	@Autowired
	private PlantShopService plantShopService;
	
	@Autowired
	private plantSearchService plantSearchService;

	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader
	
	
	final static private String savePath = "/Users/kimjoohwan/Desktop/Dev/"; // 게시글 작성중 이미지 파일 첨부시 파일이 저장되는 실제 경로
	
	
//	http://localhost/mvc/board/list?page=1&searchType=title&searchValue=%EC%95%84%EC%9D%B4%ED%8F%B0
//	 param : {page=1, searchType=title, searchValue=아이폰}
	// /board/list
//	@GetMapping("list") // /board/list
	@GetMapping("/PlantShop")
	public String list(Model model, @RequestParam Map<String, Object> param, @RequestParam(required = false) String[] parceltype) {
		log.info("PlantShop 요청, param : " + param);
		
		int page = 1;
		System.out.println(Arrays.toString(parceltype));
		try {
			if(param.get("searchType") != null) {
				param.put((String) param.get("searchType"), param.get("searchValue"));
				// title - 아이폰
				// content - 삽니다
			}
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		if(parceltype != null && parceltype.length > 0) {
			param.put("parceltype", Arrays.asList(parceltype));
		}else {
			param.remove("parceltype");
		}
		
		int plantshopCount = plantShopService.getPlantShopCount(param);
//		PageInfo pageInfo = new PageInfo(page, 10, boardCount, 15); // 게시글이 보여지는 갯수 = 15
		PageInfo pageInfo = new PageInfo(page, 10, plantshopCount, 9); // 게시글이 보여지는 갯수 = 10
		
		List<Plantshop> list = plantShopService.getPlantShopList(pageInfo, param);
		
		System.out.println("plantshopCount : " + plantshopCount);
		System.out.println("list : " + list.toString().replace("),", "),\n"));
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/3.1_PlantShop";
	}
	
//-- plant-parcel-out 기존 코드 ----
	
//	@RequestMapping(value = {"/plant-parcel-out"}, method = RequestMethod.GET)
//	public String recomlist(Locale locale, Model model, HttpSession session, Map<String, Object> map, Integer id) {
//		int parcelrecompage = 1;
//		Map<String, Object> paramMap1 = new HashMap<>();
//		int count1 = plantShopService.getPlantShopCount(paramMap1);
//		PageInfo pageInfo1 = new PageInfo(parcelrecompage, 5, count1, 6);
//		List<Plantshop> recomlist = plantShopService.getPlantShopList(pageInfo1, paramMap1);
//		model.addAttribute("recomlist", recomlist);
//		
//		return "3.3_plant-parcel-out";
//		
//	} 
//	
//	
//	@RequestMapping("/plant-parcel-out")
//	public String view(Model model, @RequestParam("parcelno") int parcelno) {
//		Plantshop plantshop = plantShopService.findByNo(parcelno);
//		if(plantshop == null) {
//			return "redirect:plantshoperror";
//		}
//		
//		
//		if(plantshop.getPlanttype() != null && plantshop.getPlanttype().equals("P1")) {
//			GardenDtl item = plantSearchService.selectByContentDetailId(Integer.parseInt(plantshop.getPlantno()));
//			model.addAttribute("item",item);
//		}
//		
//		
//		if(plantshop.getPlanttype() != null && plantshop.getPlanttype().equals("P2")) {
//			FlowerDtl item = plantSearchService.selectByFlowerId(Integer.parseInt(plantshop.getPlantno()));
//			model.addAttribute("item",item);
//		}
//		
//		if(plantshop.getPlanttype() != null && plantshop.getPlanttype().equals("P3")) {
//			DryGardenDtl item = plantSearchService.selectByDryGardenId(Integer.parseInt(plantshop.getPlantno()));
//			model.addAttribute("item",item);
//		}
//		
//		model.addAttribute("plantshop", plantshop);
//		System.out.println(plantshop.getParcelreplies());
//		model.addAttribute("plantparcelreplylist", plantshop.getParcelreplies());
//		
//		return "/3.3_plant-parcel-out";
//	}
	
	//-- plant-parcel-out 새로운 코드 --
	@RequestMapping(value = {"/plant-parcel-out", "/plant-parcel-out/{parcelno}"}, method = RequestMethod.GET)
	public String recomlistAndview(Locale locale, Model model, HttpSession session, Map<String, Object> map,
	                               @RequestParam(name = "parcelno", required = false) Integer parcelno) {

	    int parcelrecompage = 1;
	    Map<String, Object> paramMap1 = new HashMap<>();
	    int count1 = plantShopService.getPlantShopCount(paramMap1);
	    PageInfo pageInfo1 = new PageInfo(parcelrecompage, 5, count1, 6);
	    List<Plantshop> recomlist = plantShopService.getPlantShopList(pageInfo1, paramMap1);
	    model.addAttribute("recomlist", recomlist);

	    if (parcelno != null) {
	        Plantshop plantshop = plantShopService.findByNo(parcelno);
	        if (plantshop == null) {
	            return "redirect:plantshoperror";
	        }

	        if (plantshop.getPlanttype() != null) {
	            if (plantshop.getPlanttype().equals("P1")) {
	                GardenDtl item = plantSearchService.selectByContentDetailId(Integer.parseInt(plantshop.getPlantno()));
	                model.addAttribute("item", item);
	            } else if (plantshop.getPlanttype().equals("P2")) {
	                FlowerDtl item = plantSearchService.selectByFlowerId(Integer.parseInt(plantshop.getPlantno()));
	                model.addAttribute("item", item);
	            } else if (plantshop.getPlanttype().equals("P3")) {
	                DryGardenDtl item = plantSearchService.selectByDryGardenId(Integer.parseInt(plantshop.getPlantno()));
	                model.addAttribute("item", item);
	            }
	        }

	        model.addAttribute("plantshop", plantshop);
	        System.out.println(plantshop.getParcelreplies());
	        model.addAttribute("plantparcelreplylist", plantshop.getParcelreplies());
	    }

	    return "/3.3_plant-parcel-out";
	}

	//--
	
	@GetMapping("/plantshoperror")
	public String error() {
		return "/common/plantshoperror";
	}

	@GetMapping("/selling_plant")
	public String writeView(Model model) {
		List<PlantNameVO> list1 = plantSearchService.selectPlantNoName();
		List<PlantNameVO> list2 = plantSearchService.selectFlowerNoName();
		List<PlantNameVO> list3 = plantSearchService.selectDryGardenNoName();
		for (PlantNameVO item : list1) {
			item.setName(item.getName().replaceAll("'", ""));
		}

		for (PlantNameVO item : list2) {
			item.setName(item.getName().replaceAll("'", ""));
		}

		for (PlantNameVO item : list3) {
			item.setName(item.getName().replaceAll("'", ""));
		}

		model.addAttribute("area1", list1);
		model.addAttribute("area2", list2);
		model.addAttribute("area3", list3);
		return "/3.5_selling_plant";
	}

	@GetMapping("/selling_seed")
	public String sellingseed() { // xxxPage = 단순 html을 연결만 시켜주는 핸들러 메소드
		
		return "3.5_selling_seed";
	}
	// selling_plant 작성
	// 게시글 처리 + 파일 업로드
	@PostMapping("/selling_plant")
	public String write(Model model, HttpSession session,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@ModelAttribute Plantshop plantshop,
			@RequestParam(required = false) String type1,
			@RequestParam(required = false) String type2,
			@RequestParam("upfile") MultipartFile upfile
			) {
		log.info("selling_plant 요청, plantshop : " + plantshop);
		
		/*
		 * // 보안코드 예시 if(loginMember.getId().equals(plantshop.getWriterId()) == false) {
		 * model.addAttribute("msg","잘못된 접근입니다."); model.addAttribute("location","/");
		 * return "common/msg"; }
		 */
		
	    plantshop.setPlanttype(type1);
		plantshop.setPlantno(type2);
		plantshop.setMno(loginMember.getMNo());
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String parcelimgedt = plantShopService.saveFile(upfile, savePath); // 실제 파일 저장로직
			
			if(parcelimgedt != null) {
				plantshop.setParcelimgedt(parcelimgedt);
				plantshop.setParcelimg(upfile.getOriginalFilename());
			}
		}
		log.debug(" plantshop : " + plantshop);
		int result = plantShopService.savePlantshop(plantshop);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록 되었습니다.");
			model.addAttribute("location", "/PlantShop");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/PlantShop");
		}
		return "common/msg";
	}
	
	// selling_seed 작성
	@PostMapping("/selling_seed")
	public String writeseed(Model model, HttpSession session,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@ModelAttribute Plantshop plantshop,
			@RequestParam("upfile") MultipartFile upfile
			) {
		log.info("selling_seed 요청, plantshop : " + plantshop);
		
		/*
		 * // 보안코드 예시 if(loginMember.getId().equals(plantshop.getWriterId()) == false) {
		 * model.addAttribute("msg","잘못된 접근입니다."); model.addAttribute("location","/");
		 * return "common/msg"; }
		 */
		
		plantshop.setMno(loginMember.getMNo());
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String parcelimgedt = plantShopService.saveFile(upfile, savePath); // 실제 파일 저장로직
			
			if(parcelimgedt != null) {
				plantshop.setParcelimgedt(parcelimgedt);
				plantshop.setParcelimg(upfile.getOriginalFilename());
			}
		}
		log.debug(" plantshop : " + plantshop);
		int result = plantShopService.savePlantshop(plantshop);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록 되었습니다.");
			model.addAttribute("location", "/PlantShop");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/PlantShop");
		}
		return "common/msg";
	}
	//----------------------------------
	
	// -- selling_plant_update 기존 코드--
	@GetMapping("/selling_plant_update")
	public String updateView(Model model,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@RequestParam("parcelno") int parcelno
			) {
		Plantshop plantshop = plantShopService.findByNo(parcelno);
		model.addAttribute("plantshop",plantshop);
		return "/3.5_selling_plant_update";
	}
	
	@PostMapping("/selling_plant_update")
		public String updateBoard(Model model, HttpSession session,
				@SessionAttribute(name = "loginMember", required = false) Member loginMember,
				@ModelAttribute Plantshop plantshop,
				@RequestParam("reloadFile") MultipartFile reloadFile
				) {
			log.info("게시글 수정 요청");
			
			plantshop.setMno(loginMember.getMNo());
			
			// 파일 저장 로직
			if(reloadFile != null && reloadFile.isEmpty() == false) {
				// 기존 파일이 있는 경우 삭제
				if(plantshop.getParcelimgedt() != null) {
					plantShopService.deleteFile(savePath + "/" +plantshop.getParcelimgedt());
				}
				
				String parcelimgedt = plantShopService.saveFile(reloadFile, savePath); // 실제 파일 저장하는 로직
				
				if(parcelimgedt != null) {
					plantshop.setParcelimg(reloadFile.getOriginalFilename());
					plantshop.setParcelimgedt(parcelimgedt);
				}
			}
			
		log.debug(" plantshop : " + plantshop);
		int result = plantShopService.savePlantshop(plantshop);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글이 수정이 완료 되었습니다.");
			model.addAttribute("location", "/PlantShop");
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/PlantShop");
		}
		return "common/msg";
	}
	//--
	
	// -- selling_plant_update 새로운 코드 코드--
	

	//--
	
	// http://localhost/mvc/board/delete?no=51
	@RequestMapping("/deleteplantshop")
	public String deleteBoard(Model model,  HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int parcelno
			) {
		log.info("게시글 삭제 요청 boardNo : " + parcelno);
		int result = plantShopService.deletePlantshop(parcelno, savePath);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "게시글 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/PlantShop");
		return "common/msg";
	}
	
	
	@RequestMapping("/plantshop/plantparcelreply")
	public String writeReply(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute PlantparcelReply plantparcelreply
			) {
		plantparcelreply.setMno(loginMember.getMNo());
		log.info("리플 작성, reply : "+ plantparcelreply);
		
		int result = plantShopService.savePlantparcelReply(plantparcelreply);
		
		if(result > 0) {
			model.addAttribute("msg","리플이 등록되었습니다.");
		} else {
			model.addAttribute("msg","리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/plant-parcel-out?parcelno="+plantparcelreply.getParcelno());
		return "/common/msg";
	}
	
	@RequestMapping("/plantshop/plantparcelreplyDel")
	public String deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int parcelrno, int parcelno
			){
		log.info("리플 삭제 요청");
		int result = plantShopService.deletePlantparcelReply(parcelrno);
		
		if(result > 0) {
			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/plant-parcel-out?parcelno=" + parcelno);
		return "/common/msg";
	}
	

	// 첨부이미지(스프링부트)
	@GetMapping("/plant/file/{fileName}") // 이미지 출력 경로 ex) 3.3_plant-parcel-out.jsp  42번째줄
	@ResponseBody
	public Resource downloadImage(@PathVariable("fileName") String fileName, Model model) throws IOException {
		return new UrlResource("file:" + savePath + fileName);
	}
	
	@RequestMapping("/plant/fileDown")
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


	
//	@RequestMapping("/member/myboard")
//	public String view2(Model model, @RequestParam("no") int no) {
//		Board board = service.findByNo(no);
//		if(board == null) {
//			return "redirect:error";
//		}
//		model.addAttribute("board", board);
//		model.addAttribute("replyList", board.getReplies());
//		return "member/myboard";
//	}
	
	
	
}
	
