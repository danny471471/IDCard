package com.anthem;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {    
    
	@Autowired
	IdCardServiceImpl IdCardServiceImpl;
	
	
	@RequestMapping(value = {"/","idCardTemplateSelection"})
    public ModelAndView userHome(){
		IdCardTemplate idCardTemplate = new IdCardTemplate();
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("idcard-selection");
    	idCardTemplate  = IdCardUtil.populateIdCardStateList(idCardTemplate);
    	mv.addObject("idCardTemplate",idCardTemplate);
    	return mv;
    }
	
	@RequestMapping(value ="/idcardFrontView",method = {RequestMethod.POST})
    public ModelAndView idcardFrontView(@ModelAttribute("idCardTemplate") IdCardTemplate idCardTemplate){
		IdCard idCard = new IdCard();
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("idcardfrontview");
    	String state =null;
    	String designId = null;
    	if(null != idCardTemplate && null != idCardTemplate.getState() 
    			&& null != idCardTemplate.getDesignId() 
    			&& !idCardTemplate.getDesignId().equalsIgnoreCase("NONE") 
    			&& !idCardTemplate.getState().equalsIgnoreCase("NONE")) {
    		
    		state = idCardTemplate.getState();
    		designId = idCardTemplate.getDesignId();
    		idCard  = IdCardServiceImpl.fetchIdCardDesignByStateAndDesignId(idCard,state,designId);
    		idCard  = IdCardUtil.populateIdCardReferenceData(idCard);
    	}
    	mv.addObject("idCard",idCard);
    	return mv;
    }
	
	@RequestMapping(value ="/idcardFrontViewNewDesign",method = {RequestMethod.POST})
    public ModelAndView idcardFrontViewNewDesign(@ModelAttribute("idCardTemplate") IdCardTemplate idCardTemplate){
		IdCard idcard = new IdCard();
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("idcardfrontview");
    	if(null != idCardTemplate && null != idCardTemplate.getState() && !idCardTemplate.getState().equalsIgnoreCase("NONE")) {
    		idcard.setState(idCardTemplate.getState());
    		idcard  = IdCardUtil.populateIdCardReferenceData(idcard);
    	}
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
    	String previouspagepath = request.getParameter("previouspagepath");
    	ModelAndView mv = new ModelAndView();
    	if(null != previouspagepath)
    		mv.setViewName(previouspagepath);
    	else
    		mv.setViewName("idcard-selection");
    	mv.addObject("idCard",IdCardUtil.populateIdCardReferenceData(idCard));
        return mv;
    }
    
    @RequestMapping(value = "/getDesignIdsByState", method = {RequestMethod.GET},produces="application/json")
    public @ResponseBody List<String> getDesignIdsByState(@RequestParam("stateCode") String stateCode){
    	List<String> designIdList = IdCardUtil.populateDesignIdListByState(stateCode);
    	return designIdList;
    }
    
    
    
}

