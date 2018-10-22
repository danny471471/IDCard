package com.anthem;

import java.util.HashMap;
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
	
	public static String[] populateDesignIdList() {
		String[] designIdList = new String[] {"Design1","Design2","Design3","Design4"};
		return designIdList;
	}
 	
	public static String[] populatePlanCodeList() {
		String[] planCodeList = new String[] {"PlanCode1","PlanCode2","PlanCode3","PlanCode4"};
		return planCodeList;
	}
	
	public static String[] populateCopayList() {
		String[] copayList = new String[] {"Priamary Care Copay","Emergency Copay","Urgent Care Copay","Copay4"
				,"Copay5","Copay6","Copay7","Copay8"		
		};
		return copayList;
	}
	
	public static IdCard populateIdCardReferenceData(IdCard idCard) {
		idCard.setLogoList(IdCardUtil.populateLogoList());
		idCard.setPlanCodeList(IdCardUtil.populatePlanCodeList());
		idCard.setCoPayList(IdCardUtil.populateCopayList());
		idCard.setStateList(IdCardUtil.populateStateList());
		idCard.setDesignIdList(IdCardUtil.populateDesignIdList());
		return idCard;
	}
	
	
	public static IdCard populateDummyIdCardValues() {
		IdCard idCard = new IdCard();
		Map<String, String> copayMap = new HashMap<String, String>();
		copayMap.put("Priamary Care Copay", "15.00");
		copayMap.put("Urgent Care Copay", "25.00");
    	idCard.setDesignId("NONE");
    	idCard.setDescription("descrption1");
    	idCard.setCombinedIdCard("YES");
    	idCard.setContractCode("1KAA");
    	idCard.setState("CA");
    	idCard.setProductType("Medical");
    	idCard.setLogo("Logo3");
    	idCard.setAlphaPrefix("AlphaPrefix");
    	idCard.setPcpRequired("YES");
    	idCard.setPlanCode("PlanCode2");
    	idCard.setPlanDescription1("planDescription1");
    	idCard.setPlanDescription2("planDescription2");
    	idCard.setRxBin("rxBin");
    	idCard.setRxPcn("rxPcn");
    	idCard.setRxLogo("NO");
    	idCard.setCopay("NONE");
    	idCard.setCopayMap(copayMap);
    	idCard.setTfns("TFN Id");
    	idCard.setClaimRouteStateCode("ClaimsRouteStateCode");
    	idCard.setMemberServices("MemberID");
    	idCard.setClaimsAndAddressEnquiry1("claimsAndAddressEnquiry1");
    	idCard.setClaimsAndAddressEnquiry2("claimsAndAddressEnquiry2");
    	idCard.setNursuryLine("nursuryLine");
    	idCard.setPreCertification("CERTIFIED");
    	idCard.setLhoUrl("NO");
    	idCard.setIdCardSticker("YES");
    	idCard.setPharmacistQuestions("QA");
    	idCard.setCoverageWhileTravelling("COVERAGE");
    	idCard.setTagLineState("NO");
    	idCard.setIsIdCardPerisisted("NO");
    	idCard.setIsIdCardActivated("NO");
    	return idCard;
	}
	
	
	public static IdCard populateDummyIdCardValues1(IdCard idCard) {
		idCard.setLogoList(IdCardUtil.populateLogoList());
		/*idCard.setTfns("TFN Id");
    	idCard.setClaimRouteStateCode("ClaimsRouteStateCode");
    	idCard.setMemberServices("MemberID");
    	idCard.setClaimsAndAddressEnquiry1("claimsAndAddressEnquiry1");
    	idCard.setClaimsAndAddressEnquiry2("claimsAndAddressEnquiry2");
    	idCard.setNursuryLine("nursuryLine");
    	idCard.setPreCertification("CERTIFIED");
    	idCard.setLhoUrl("NO");
    	idCard.setIdCardSticker("YES");
    	idCard.setPharmacistQuestions("QA");
    	idCard.setCoverageWhileTravelling("COVERAGE");
    	idCard.setTagLineState("NO");*/
    	//idCard.setCopayMap(idCard.getCopayMap());
    	return idCard;
	}
	
	
	
}
