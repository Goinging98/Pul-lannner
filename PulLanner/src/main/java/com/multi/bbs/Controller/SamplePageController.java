package com.multi.bbs.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import jakarta.websocket.server.PathParam;

@Controller
public class SamplePageController {

	
	
	@GetMapping("/page/1")
	public String getPage1( String page) {
		
		return "3.4_shopping_bag";
	}
	
	@GetMapping("/page/2")
	public String getPage2( String page) {
		
		return "3.5_selling_plant";
	}
	
	@GetMapping("/page/3")
	public String getPage3( String page) {
		
		return "3.6_selling_seed";
	}
	
	
	
	
	
	
	
}
