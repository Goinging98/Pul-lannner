package com.multi.bbs.Controller;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.bbs.common.util.PageInfo;
import com.multi.bbs.plantSearch.model.service.plantSearchService;
import com.multi.bbs.plantSearch.model.vo.GardenDtl;
import com.multi.bbs.plantSearch.model.vo.GardenList;



@Controller
public class plantSearchController {
	
	@Autowired
    private plantSearchService plantSearchService;

	@RequestMapping("/PlantSearch")
    public String list(Model model, @RequestParam Map<String, Object> param, Integer id) {

        int page = 1;
        try {
            page = Integer.parseInt((String) param.get("page"));
        } catch (Exception e) {
        }


        int count = plantSearchService.selectGardenCount(param);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
        List<GardenList> list = plantSearchService.selectGardentList(pageInfo, param);
        

        int maxPage = (count / 12);

        model.addAttribute("list", list);
        model.addAttribute("count", count);
        model.addAttribute("maxPage", maxPage);
        model.addAttribute("page", page);
        model.addAttribute("pageInfo", pageInfo);
        
        
        if (id != null) {
        	GardenList gardenList = plantSearchService.selectByContentId(id);
            model.addAttribute("item", gardenList);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("itemDetail: " + gardenList); // 또는 gardenDtl의 필드들을 하나씩 출력
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
    public String gardendetail(Model model, @RequestParam Map<String, Object> param, Integer id) {

        int page = 1;
        try {
            page = Integer.parseInt((String) param.get("page"));
        } catch (Exception e) {
        }


        int count = plantSearchService.selectGardenCount(param);
        PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
        List<GardenList> list = plantSearchService.selectGardentList(pageInfo, param);;


        int maxPage = (count / 12);

        model.addAttribute("list", list);
        model.addAttribute("count", count);
        model.addAttribute("maxPage", maxPage);
        model.addAttribute("page", page);
        model.addAttribute("pageInfo", pageInfo);

        
        
        if (id != null) {
        	GardenList gardenList = plantSearchService.selectByContentId(id);
            model.addAttribute("item", gardenList);
            
            // id가 null이 아닌 경우에만 id를 출력합니다.
            System.out.println("id: " + id);
            System.out.println("itemDetail: " + gardenList); // 또는 gardenDtl의 필드들을 하나씩 출력
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
	
	
	
	
	
	
}