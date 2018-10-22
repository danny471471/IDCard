package com.anthem;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {    
    
	@RequestMapping(value = {"/","idCardTemplateSelection"})
    public ModelAndView userHome(){
		IdCard idcard = null;
    	ModelAndView mv = new ModelAndView();
    	System.out.println("welcome screeen");
    	mv.setViewName("idcard-selection");
    	idcard  = IdCardUtil.populateDummyIdCardValues();
    	idcard  = IdCardUtil.populateIdCardReferenceData(idcard);
    	mv.addObject("idCard",idcard);
    	return mv;
    }
    
	@RequestMapping(value ="/idcardFrontView",method = {RequestMethod.POST})
    public ModelAndView idcardFrontView(@ModelAttribute("idCard") IdCard idCard){
		IdCard idcard = null;
    	ModelAndView mv = new ModelAndView();
    	System.out.println("welcome screeen");
    	mv.setViewName("idcardfrontview");
    	idcard  = IdCardUtil.populateDummyIdCardValues();
    	idcard  = IdCardUtil.populateIdCardReferenceData(idcard);
    	mv.addObject("idCard",idcard);
    	return mv;
    }
	
	
    
    @RequestMapping(value = "/idcardBackView", method = {RequestMethod.POST})
    public ModelAndView idcardBackView(@ModelAttribute("idCard") IdCard idCard){
    	System.out.println("idCard: "+idCard.toString());
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("idcardbackview");
    	mv.addObject("idCard",IdCardUtil.populateIdCardReferenceData(idCard));
        return mv;
    }
    
    @RequestMapping(value = "/reviewIdCardDesign", method = RequestMethod.POST)
    public ModelAndView reviewIdCardDesign(@ModelAttribute("idCard") IdCard idCard){
    	System.out.println("idCard: "+idCard.toString());
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("approval");
    	mv.addObject("idCard",IdCardUtil.populateIdCardReferenceData(idCard));
        return mv;
    }
    
    @RequestMapping(value = "/saveIdCardDesign", method = RequestMethod.POST)
    public ModelAndView saveIdCardDesign(@ModelAttribute("idCard") IdCard idCard){
    	System.out.println("idCard: "+idCard.toString());
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("approval");
    	idCard.setIsIdCardPerisisted("YES");
    	mv.addObject("idCard",IdCardUtil.populateIdCardReferenceData(idCard));
        return mv;
    }
    
    
    @RequestMapping(value = "/previouspage", method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView previousScreenFromApprovalPage(HttpServletRequest request,@ModelAttribute("idCard") IdCard idCard){
    	;
    	String previouspagepath = request.getParameter("previouspagepath");
    	System.out.println("idCard: "+idCard.toString());
    	ModelAndView mv = new ModelAndView();
    	if(null != previouspagepath)
    		mv.setViewName(previouspagepath);
    	else
    		mv.setViewName("welcome");
    	mv.addObject("idCard",IdCardUtil.populateIdCardReferenceData(idCard));
        return mv;
    }
    
    
    
    
}
