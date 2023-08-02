package com.multi.bbs.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.bbs.Arboretum.model.service.arboretumService;
import com.multi.bbs.Arboretum.model.vo.TourVO;
import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.plantSearch.model.vo.GardenList;




@Controller
public class ArboretumController {
	
	@Autowired
    private arboretumService arboretumService;
	
	
	
// ===========================식물원 리스트 관련====================================================
	@RequestMapping("/arboretumList")
    public String arboretumList(Model model, @RequestParam Map<String, String> paramMap, Integer id){
		int page = 1;
        Map<String, String> searchMap = new HashMap<String, String>();

        try {
            String searchValue = (String) paramMap.get("searchValue");
            if (searchValue != null && searchValue.length() > 0) {
                // 검색 값이 있는 경우에만 검색을 수행하도록 설정합니다.
                searchMap.put("searchValue", searchValue);
            } else {
                // 검색 값이 없는 경우, 기본적으로 모든 레코드를 검색하도록 설정합니다.
                searchMap.put("searchType", "all");
            }
            page = Integer.parseInt((String) paramMap.get("page"));
        } catch (Exception e) {
            // 파라미터가 올바르지 않은 경우에 대한 예외 처리를 할 수 있습니다.
            // 필요에 따라 로깅하거나 에러 페이지로 리다이렉트하는 등의 처리를 추가할 수 있습니다.
        }
        
        int count = arboretumService.selectArboretumCount(searchMap);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
        List<TourVO> aroboretumList = arboretumService.selectArboretumList(pageInfo, searchMap);
        
        model.addAttribute("aroboretumList", aroboretumList);
        model.addAttribute("param", paramMap);
        model.addAttribute("count", count);
        model.addAttribute("page", page);
        model.addAttribute("pageInfo", pageInfo);
        
        if (id != null) {
        	TourVO aItem = arboretumService.selectByArboretumId(id);
            model.addAttribute("aItem", aItem);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("aItem: " + aItem); // 또는 gardenDtl의 필드들을 하나씩 출력
        }
        
        
        return "2.1_listOfArboretums";
        
    }
		
	// =========================== 산/숲 리스트 관련====================================================
	@RequestMapping("/mountainList")
	public String mountainList(Model model, @RequestParam Map<String, String> paramMap, Integer id) {
		int page = 1;
        Map<String, String> searchMap = new HashMap<String, String>();

        try {
            String searchValue = (String) paramMap.get("searchValue");
            if (searchValue != null && searchValue.length() > 0) {
                // 검색 값이 있는 경우에만 검색을 수행하도록 설정합니다.
                searchMap.put("searchValue", searchValue);
            } else {
                // 검색 값이 없는 경우, 기본적으로 모든 레코드를 검색하도록 설정합니다.
                searchMap.put("searchType", "all");
            }
            page = Integer.parseInt((String) paramMap.get("page"));
        } catch (Exception e) {
            // 파라미터가 올바르지 않은 경우에 대한 예외 처리를 할 수 있습니다.
            // 필요에 따라 로깅하거나 에러 페이지로 리다이렉트하는 등의 처리를 추가할 수 있습니다.
        }
        
        int count = arboretumService.selectMountCount(searchMap);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
        List<TourVO> MountList = arboretumService.selectMountList(pageInfo, searchMap);
        
        model.addAttribute("MountList", MountList);
        model.addAttribute("param", paramMap);
        model.addAttribute("count", count);
        model.addAttribute("page", page);
        model.addAttribute("pageInfo", pageInfo);
        
        if (id != null) {
        	TourVO mItem = arboretumService.selectMountId(id);
            model.addAttribute("mItem", mItem);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("mItem: " + mItem); // 또는 gardenDtl의 필드들을 하나씩 출력
        }
	    return "2.1_listOfMountain";
	    
	}
	
	
	
	// =========================== 공원(국립공원, 도립공원, 군립공원) 관련================================
	
	@RequestMapping("/parkList")
	public String parkList(Model model, @RequestParam Map<String, String> paramMap, Integer id) {
		int page = 1;
        Map<String, String> searchMap = new HashMap<String, String>();

        try {
            String searchValue = (String) paramMap.get("searchValue");
            if (searchValue != null && searchValue.length() > 0) {
                // 검색 값이 있는 경우에만 검색을 수행하도록 설정합니다.
                searchMap.put("searchValue", searchValue);
            } else {
                // 검색 값이 없는 경우, 기본적으로 모든 레코드를 검색하도록 설정합니다.
                searchMap.put("searchType", "all");
            }
            page = Integer.parseInt((String) paramMap.get("page"));
        } catch (Exception e) {
            // 파라미터가 올바르지 않은 경우에 대한 예외 처리를 할 수 있습니다.
            // 필요에 따라 로깅하거나 에러 페이지로 리다이렉트하는 등의 처리를 추가할 수 있습니다.
        }
        
        int count = arboretumService.selectParkCount(searchMap);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
        List<TourVO> parkList = arboretumService.selectParkList(pageInfo, searchMap);
        
        model.addAttribute("parkList", parkList);
        model.addAttribute("param", paramMap);
        model.addAttribute("count", count);
        model.addAttribute("page", page);
        model.addAttribute("pageInfo", pageInfo);
        
        if (id != null) {
        	TourVO pItem = arboretumService.selectParkId(id);
            model.addAttribute("pItem", pItem);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("pItem: " + pItem); // 또는 gardenDtl의 필드들을 하나씩 출력
        }
	
		return "2.1_listOfPark";
	
	}
	
	
	
	// =========================== 휴양림 관련================================
	@RequestMapping("/forestLodgeList")
	public String forestList(Model model, @RequestParam Map<String, String> paramMap, Integer id) {
		int page = 1;
        Map<String, String> searchMap = new HashMap<String, String>();

        try {
            String searchValue = (String) paramMap.get("searchValue");
            if (searchValue != null && searchValue.length() > 0) {
                // 검색 값이 있는 경우에만 검색을 수행하도록 설정합니다.
                searchMap.put("searchValue", searchValue);
            } else {
                // 검색 값이 없는 경우, 기본적으로 모든 레코드를 검색하도록 설정합니다.
                searchMap.put("searchType", "all");
            }
            page = Integer.parseInt((String) paramMap.get("page"));
        } catch (Exception e) {
            // 파라미터가 올바르지 않은 경우에 대한 예외 처리를 할 수 있습니다.
            // 필요에 따라 로깅하거나 에러 페이지로 리다이렉트하는 등의 처리를 추가할 수 있습니다.
        }
        
        int count = arboretumService.selectForestLodgeCount(searchMap);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
        List<TourVO> forestLodgeList = arboretumService.selectForestLodgeList(pageInfo, searchMap);
        
        model.addAttribute("forestLodgeList", forestLodgeList);
        model.addAttribute("param", paramMap);
        model.addAttribute("count", count);
        model.addAttribute("page", page);
        model.addAttribute("pageInfo", pageInfo);
        
        if (id != null) {
        	TourVO flItem = arboretumService.selectForestLodgeId(id);
            model.addAttribute("flItem", flItem);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("flItem: " + flItem); // 또는 gardenDtl의 필드들을 하나씩 출력
        }
	
		return "2.1_listOfForestLodge";
	
	}
	
	
	
	// =========================== 공통 디테일페이지 관련================================	
	@RequestMapping("/arboretumDetail")
    public String arboretumDetail(Model model, @RequestParam Map<String, String> paramMap, Integer id) {
		int page = 1;
        Map<String, String> searchMap = new HashMap<String, String>();

        try {
            String searchValue = (String) paramMap.get("searchValue");
            if (searchValue != null && searchValue.length() > 0) {
                // 검색 값이 있는 경우에만 검색을 수행하도록 설정합니다.
                searchMap.put("searchValue", searchValue);
            } else {
                // 검색 값이 없는 경우, 기본적으로 모든 레코드를 검색하도록 설정합니다.
                searchMap.put("searchType", "all");
            }
            page = Integer.parseInt((String) paramMap.get("page"));
        } catch (Exception e) {
            // 파라미터가 올바르지 않은 경우에 대한 예외 처리를 할 수 있습니다.
            // 필요에 따라 로깅하거나 에러 페이지로 리다이렉트하는 등의 처리를 추가할 수 있습니다.
        }
        
        int count = arboretumService.selectArboretumCount(searchMap);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
        List<TourVO> aroboretumList = arboretumService.selectArboretumList(pageInfo, searchMap);
        
        model.addAttribute("aroboretumList", aroboretumList);
        model.addAttribute("param", paramMap);
        model.addAttribute("count", count);
        model.addAttribute("page", page);
        model.addAttribute("pageInfo", pageInfo);
        
        if (id != null) {
        	TourVO aItem = arboretumService.selectByArboretumId(id);
            model.addAttribute("aItem", aItem);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("aItem: " + aItem); // 또는 gardenDtl의 필드들을 하나씩 출력
        }
        
        
		// selectRandomAccom을 호출하여 무작위 숙박 시설 목록을 가져옴
		List<TourVO> randomList = arboretumService.selectRandomList(4);

//		for (Accommodation a : randomAccommodations) {
//			if (a.firstimage == null) {
//				a.firstimage = "http://tong.visitkorea.or.kr/cms/resource/35/1359335_image2_1.jpg";
//			}
//		}
		model.addAttribute("randomList", randomList);
		
		
        return "2.2_arboretumDetailPage";
        
    }

}
