package com.multi.bbs.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ArboretumController {
		
	@RequestMapping("/arboretumList")
    public String arboretumList(Model model, @RequestParam Map<String, Object> param, Integer id) {

        return "2.1_listOfArboretums";
        
    }
	
	@RequestMapping("/mountainList")
	public String mountainList(Model model, @RequestParam Map<String, Object> param, Integer id) {
	
	    return "2.1_listOfArboretums";
	    
	}
	
	@RequestMapping("/parkList")
	public String parkList(Model model, @RequestParam Map<String, Object> param, Integer id) {
	
		return "2.1_listOfArboretums";
	
	}
	
	@RequestMapping("/forestList")
	public String forestList(Model model, @RequestParam Map<String, Object> param, Integer id) {
	
		return "2.1_listOfArboretums";
	
	}
	
	@RequestMapping("/arboretumDetail")
    public String arboretumDetail(Model model, @RequestParam Map<String, Object> param, Integer id) {

        return "2.2_arboretumsDetailPage";
        
    }
}
