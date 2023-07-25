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
import com.multi.bbs.plantSearch.model.vo.GardenList;


@Controller
public class plantSearchController {
	
	@Autowired
    private plantSearchService plantSearchService;

	@RequestMapping("/PlantSearch")
    public String list(Model model, @RequestParam Map<String, Object> param) {

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


        return "1.1_plantSearchPage";
    }
}