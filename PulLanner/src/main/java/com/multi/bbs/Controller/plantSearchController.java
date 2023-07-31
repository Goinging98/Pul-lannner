package com.multi.bbs.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.plantSearch.model.service.plantSearchService;
import com.multi.bbs.plantSearch.model.vo.DryGardenDtl;
import com.multi.bbs.plantSearch.model.vo.FlowerDtl;
import com.multi.bbs.plantSearch.model.vo.GardenDtl;
import com.multi.bbs.plantSearch.model.vo.GardenList;



@Controller
public class plantSearchController {
	
	@Autowired
    private plantSearchService plantSearchService;
	
// ================================실내식물 관련===========================================
	@RequestMapping("/PlantSearch")
	public String listt(Model model, @RequestParam Map<String, String> paramMap, Integer id){

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

		
        int count = plantSearchService.selectGardenCount(searchMap);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
        List<GardenList> list = plantSearchService.selectGardentList(pageInfo, searchMap);
        


        model.addAttribute("list", list);
        model.addAttribute("param", paramMap);
        model.addAttribute("count", count);
        model.addAttribute("page", page);
        model.addAttribute("pageInfo", pageInfo);

        
        
        if (id != null) {
        	GardenList gardenList = plantSearchService.selectByContentId(id);
            model.addAttribute("item", gardenList);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("item: " + gardenList); // 또는 gardenDtl의 필드들을 하나씩 출력
        }
        

        
        if (id != null) {
        	GardenDtl gardenDtl = plantSearchService.selectByContentDetailId(id);
            model.addAttribute("itemDetail", gardenDtl);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("itemDetail: " + gardenDtl); // 또는 gardenDtl의 필드들을 하나씩 출력
        }

        

        return "1.1_plantGardenSearchPage";
        
    }
	
	
	
	
	@RequestMapping("/GardenDetail")
    public String gardendetail(Model model, @RequestParam Map<String, Object> param, Integer id, @RequestParam Map<String, String> paramMap){


        
        
        if (id != null) {
        	GardenList gardenList = plantSearchService.selectByContentId(id);
            model.addAttribute("item", gardenList);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("item: " + gardenList); // 또는 gardenDtl의 필드들을 하나씩 출력
        }
        
        
        if (id != null) {
        	GardenDtl gardenDtl = plantSearchService.selectByContentDetailId(id);
            model.addAttribute("itemDetail", gardenDtl);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("itemDetail: " + gardenDtl); // 또는 gardenDtl의 필드들을 하나씩 출력
        }


        return "1.2_plantGardenDetail";
    }
	
	
	
	// ================================꽃 관련===========================================	
	@RequestMapping("/FlowerSearch")
    public String flowerlist(Model model, @RequestParam Map<String, Object> param, Integer id, @RequestParam Map<String, String> paramMap){
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

		
        int count = plantSearchService.selectGardenCount(searchMap);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
	        List<FlowerDtl> flowerlist = plantSearchService.selectFlowerList(pageInfo, searchMap);;
	        
	      
	        model.addAttribute("flowerlist", flowerlist);
	        model.addAttribute("param", paramMap);
	        model.addAttribute("count", count);
	        model.addAttribute("page", page);
	        model.addAttribute("pageInfo", pageInfo);
	        
	        
	        if (id != null) {
	        	FlowerDtl floweritem= plantSearchService.selectByFlowerId(id);
	            model.addAttribute("fitem", floweritem);
	            
	            // id가 null이 아닌 경우에만 id를 출력합니다.
	            System.out.println("id: " + id);
	            System.out.println("fitem: " + floweritem); // 또는 gardenDtl의 필드들을 하나씩 출력
	        }
	        

	        
	        
		 return "1.1_plantFlowerSearchPage";
	}
	
	
	@RequestMapping("/FlowerDetail")
    public String flowerdetail(Model model, @RequestParam Map<String, Object> param, Integer id) {

		
		if (id != null) {
        	FlowerDtl floweritem= plantSearchService.selectByFlowerId(id);
            model.addAttribute("Fitem", floweritem);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("Fitem: " + floweritem); // 또는 gardenDtl의 필드들을 하나씩 출력
        }
	        
		 return "1.4_flowerSearchDetail";
	}
	
	
	
	
	
	
	
	// ================================다육이 관련===========================================
	@RequestMapping("/DryGardenSearch")
    public String drygardenlist(Model model, @RequestParam Map<String, String> paramMap, Integer id){
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
	        

	        int count = plantSearchService.selectDryGardenCount(searchMap);
	        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
	        List<DryGardenDtl> dryGardenlist = plantSearchService.selectDryGardenList(pageInfo, searchMap);


	        model.addAttribute("drygardenlist", dryGardenlist);
	        model.addAttribute("param", paramMap);
	        model.addAttribute("count", count);
	        model.addAttribute("page", page);
	        model.addAttribute("pageInfo", pageInfo);
	        
	        if (id != null) {
	        	DryGardenDtl drygardenitem= plantSearchService.selectByDryGardenId(id);
	            model.addAttribute("Ditem", drygardenitem);
	            
	            // id가 null이 아닌 경우에만 id를 출력합니다.
	            System.out.println("id: " + id);
	            System.out.println("Ditem: " + drygardenitem); // 또는 gardenDtl의 필드들을 하나씩 출력
	        }
	        
	        
	
		
		 return "1.1_plantDryGardenSearchPage";
	}
	
	
	@RequestMapping("/DryGardenDetail")
    public String drygardendetail(Model model, @RequestParam Map<String, Object> param, Integer id, @RequestParam Map<String, String> paramMap){

	        
	        if (id != null) {
	        	DryGardenDtl drygardenitem= plantSearchService.selectByDryGardenId(id);
	            model.addAttribute("Ditem", drygardenitem);
	            
	            // id가 null이 아닌 경우에만 id를 출력합니다.
	            System.out.println("id: " + id);
	            System.out.println("Ditem: " + drygardenitem); // 또는 gardenDtl의 필드들을 하나씩 출력
	        }
	        
		 return "1.3_dryGardenSearchDetail";
	}
	
	
}












