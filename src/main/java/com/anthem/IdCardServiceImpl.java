package com.anthem;

import org.springframework.stereotype.Service;

@Service
public class IdCardServiceImpl {

	public IdCard fetchIdCardDesignByStateAndDesignId(IdCard idCard, String state, String designId) {
		//No BackEnd Implementation, So Using the hard coded values by calling the below method
		idCard  = IdCardUtil.populateDummyIdCardValues(idCard);
		return idCard;
	}
	
	
	
	
}
