package com.anthem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class IdCardUtil {
	
	public static String[] populateLogoList() {
		String[] logoList = new String[] {"Logo1","Logo2","Logo3","Logo4"};
		return logoList;
	}
	
	
	public static String[] populateStateList() {
		String[] stateList = new String[] {"California","Colorodo","Nevada"};
		return stateList;
	}
	
	public static List<String> populateDesignIdListByState(String stateCode) {
		List<String> designIdList = new ArrayList<>();
    	if(null != stateCode && !stateCode.equalsIgnoreCase("NONE")) {
			if(stateCode.equalsIgnoreCase("California")) {
    			designIdList.add("Design1");
    		}
    	}
    	return designIdList;
	}
	
	public static String[] populatePlanCodeList() {
		String[] planCodeList = new String[] {"PlanCode1","PlanCode2","PlanCode3","PlanCode4","423"};
		return planCodeList;
	}
	
	public static String[] populateCopayList() {
		String[] copayList = new String[] {"Priamary Care Copay","Emergency Copay","Urgent Care Copay","Copay4"
				,"Copay5","Copay6","Copay7","Copay8"		
		};
		return copayList;
	}
	
	
	public static Map<String,String> populateCopayList1() {
		Map<String,String> copayList = new LinkedHashMap<String,String>();
		copayList.put("Priamary Care Copay_12.00", "Priamary Care Copay");
		copayList.put("Emergency Copay_13.00", "Emergency Copay");
		return copayList;
	}
	
	public static IdCardTemplate populateIdCardStateList(IdCardTemplate idCardTemplate) {
		idCardTemplate.setStateList(IdCardUtil.populateStateList());
		return idCardTemplate;
	}
	
	public static IdCard populateIdCardReferenceData(IdCard idCard) {
		idCard.setLogoList(IdCardUtil.populateLogoList());
		idCard.setPlanCodeList(IdCardUtil.populatePlanCodeList());
		idCard.setCoPayList(IdCardUtil.populateCopayList1());
		return idCard;
	}
	
	
	public static IdCard populateDummyIdCardValues(IdCard idCard) {
		Map<String, String> copayMap = new HashMap<String, String>();
		copayMap.put("Priamary Care Copay", "15.00");
		copayMap.put("Emergency Copay", "20.00");
		copayMap.put("Urgent Care Copay", "25.00");
    	idCard.setDesignId("Design1");
    	idCard.setDescription("descrption1");
    	idCard.setCombinedIdCard("YES");
    	idCard.setContractCode("1KAA");
    	idCard.setState("CA");
    	idCard.setProductType("Medical");
    	idCard.setLogo("Logo3");
    	idCard.setAlphaPrefix("AlphaPrefix");
    	idCard.setPcpRequired("YES");
    	idCard.setPlanCode("423");
    	idCard.setPlanDescription1("planDescription1");
    	idCard.setPlanDescription2("planDescription2");
    	idCard.setRxBin("003858");
    	idCard.setRxPcn("A4");
    	idCard.setRxLogo("NO");
    	idCard.setCopay("NONE");
    	idCard.setCopayMap(copayMap);
    	idCard.setTfns("1-844-444-7419");
    	idCard.setClaimRouteStateCode("ClaimsRouteStateCode");
    	idCard.setMemberServices("1-833-597-2356");
    	idCard.setClaimsAndAddressEnquiry1("claimsAndAddressEnquiry1");
    	idCard.setClaimsAndAddressEnquiry2("claimsAndAddressEnquiry2");
    	idCard.setNursuryLine("1-866-784-2643");
    	idCard.setPreCertification("1-800-992-5498");
    	idCard.setLhoUrl("NO");
    	idCard.setIdCardSticker("YES");
    	idCard.setPharmacistQuestions("QA");
    	idCard.setCoverageWhileTravelling("1-800-810-2583");
    	idCard.setTagLineState("NO");
    	idCard.setIsIdCardPerisisted("NO");
    	idCard.setIsIdCardActivated("NO");
    	return idCard;
	}
	
	
}
