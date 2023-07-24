package com.multi.bbs.Controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.servlet.http.HttpSession;

@Controller
public class plantSearchController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(plantSearchController.class);
	
	@RequestMapping(value = "/PlantSearch", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome plantProud! The client locale is {}.", locale);
		return "1.1_plantSearchPage";
	}
}
	
