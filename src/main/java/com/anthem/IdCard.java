package com.anthem;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class IdCard {
	private String[] stateList;
	private String[] designIdList;
	private String designId;
	private String description;
	private String combinedIdCard;
	private String contractCode;
	private String state;
	private String productType;
	private String[] logoList;
	private String logo;
	private String alphaPrefix;
	private String pcpRequired;
	private String[] planCodeList;
	private String planCode;
	private String planDescription1;
	private String planDescription2;
	private String rxBin;
	private String rxPcn;
	private String rxLogo;
	private String[] coPayList;
	private String copay;
	private Map<String, String> copayMap = new HashMap<String, String>();
	private String tfns;
	private String claimRouteStateCode;
	private String memberServices;
	private String claimsAndAddressEnquiry1;
	private String claimsAndAddressEnquiry2;
	private String nursuryLine;
	private String preCertification;
	private String lhoUrl;
	private String pharmacistQuestions;
	private String idCardSticker;
	private String coverageWhileTravelling;
	private String tagLineState;
	private String isIdCardPerisisted;
	private String isIdCardActivated;
	public String getDesignId() {
		return designId;
	}
	public void setDesignId(String designId) {
		this.designId = designId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCombinedIdCard() {
		return combinedIdCard;
	}
	public void setCombinedIdCard(String combinedIdCard) {
		this.combinedIdCard = combinedIdCard;
	}
	public String getContractCode() {
		return contractCode;
	}
	public void setContractCode(String contractCode) {
		this.contractCode = contractCode;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String[] getLogoList() {
		return logoList;
	}
	public void setLogoList(String[] logoList) {
		this.logoList = logoList;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getAlphaPrefix() {
		return alphaPrefix;
	}
	public void setAlphaPrefix(String alphaPrefix) {
		this.alphaPrefix = alphaPrefix;
	}
	public String getPcpRequired() {
		return pcpRequired;
	}
	public void setPcpRequired(String pcpRequired) {
		this.pcpRequired = pcpRequired;
	}
	public String[] getPlanCodeList() {
		return planCodeList;
	}
	public void setPlanCodeList(String[] planCodeList) {
		this.planCodeList = planCodeList;
	}
	public String getPlanCode() {
		return planCode;
	}
	public void setPlanCode(String planCode) {
		this.planCode = planCode;
	}
	public String getPlanDescription1() {
		return planDescription1;
	}
	public void setPlanDescription1(String planDescription1) {
		this.planDescription1 = planDescription1;
	}
	public String getPlanDescription2() {
		return planDescription2;
	}
	public void setPlanDescription2(String planDescription2) {
		this.planDescription2 = planDescription2;
	}
	public String getRxBin() {
		return rxBin;
	}
	public void setRxBin(String rxBin) {
		this.rxBin = rxBin;
	}
	public String getRxPcn() {
		return rxPcn;
	}
	public void setRxPcn(String rxPcn) {
		this.rxPcn = rxPcn;
	}
	public String getRxLogo() {
		return rxLogo;
	}
	public void setRxLogo(String rxLogo) {
		this.rxLogo = rxLogo;
	}
	public String[] getCoPayList() {
		return coPayList;
	}
	public void setCoPayList(String[] coPayList) {
		this.coPayList = coPayList;
	}
	public String getCopay() {
		return copay;
	}
	public void setCopay(String copay) {
		this.copay = copay;
	}
	public Map<String, String> getCopayMap() {
		return copayMap;
	}
	public void setCopayMap(Map<String, String> copayMap) {
		this.copayMap = copayMap;
	}
	public String getClaimRouteStateCode() {
		return claimRouteStateCode;
	}
	public void setClaimRouteStateCode(String claimRouteStateCode) {
		this.claimRouteStateCode = claimRouteStateCode;
	}
	public String getMemberServices() {
		return memberServices;
	}
	public void setMemberServices(String memberServices) {
		this.memberServices = memberServices;
	}
	public String getClaimsAndAddressEnquiry1() {
		return claimsAndAddressEnquiry1;
	}
	public void setClaimsAndAddressEnquiry1(String claimsAndAddressEnquiry1) {
		this.claimsAndAddressEnquiry1 = claimsAndAddressEnquiry1;
	}
	public String getClaimsAndAddressEnquiry2() {
		return claimsAndAddressEnquiry2;
	}
	public void setClaimsAndAddressEnquiry2(String claimsAndAddressEnquiry2) {
		this.claimsAndAddressEnquiry2 = claimsAndAddressEnquiry2;
	}
	public String getNursuryLine() {
		return nursuryLine;
	}
	public void setNursuryLine(String nursuryLine) {
		this.nursuryLine = nursuryLine;
	}
	public String getPreCertification() {
		return preCertification;
	}
	public void setPreCertification(String preCertification) {
		this.preCertification = preCertification;
	}
	public String getLhoUrl() {
		return lhoUrl;
	}
	public void setLhoUrl(String lhoUrl) {
		this.lhoUrl = lhoUrl;
	}
	public String getPharmacistQuestions() {
		return pharmacistQuestions;
	}
	public void setPharmacistQuestions(String pharmacistQuestions) {
		this.pharmacistQuestions = pharmacistQuestions;
	}
	public String getIdCardSticker() {
		return idCardSticker;
	}
	public void setIdCardSticker(String idCardSticker) {
		this.idCardSticker = idCardSticker;
	}
	public String getCoverageWhileTravelling() {
		return coverageWhileTravelling;
	}
	public void setCoverageWhileTravelling(String coverageWhileTravelling) {
		this.coverageWhileTravelling = coverageWhileTravelling;
	}
	public String getTagLineState() {
		return tagLineState;
	}
	public void setTagLineState(String tagLineState) {
		this.tagLineState = tagLineState;
	}
	public String getTfns() {
		return tfns;
	}
	public void setTfns(String tfns) {
		this.tfns = tfns;
	}
	public String getIsIdCardPerisisted() {
		return isIdCardPerisisted;
	}
	public void setIsIdCardPerisisted(String isIdCardPerisisted) {
		this.isIdCardPerisisted = isIdCardPerisisted;
	}
	public String getIsIdCardActivated() {
		return isIdCardActivated;
	}
	public void setIsIdCardActivated(String isIdCardActivated) {
		this.isIdCardActivated = isIdCardActivated;
	}
	public String[] getStateList() {
		return stateList;
	}
	public void setStateList(String[] stateList) {
		this.stateList = stateList;
	}
	public String[] getDesignIdList() {
		return designIdList;
	}
	public void setDesignIdList(String[] designIdList) {
		this.designIdList = designIdList;
	}
	@Override
	public String toString() {
		return "IdCard [stateList=" + Arrays.toString(stateList) + ", designIdList=" + Arrays.toString(designIdList)
				+ ", designId=" + designId + ", description=" + description + ", combinedIdCard=" + combinedIdCard
				+ ", contractCode=" + contractCode + ", state=" + state + ", productType=" + productType + ", logoList="
				+ Arrays.toString(logoList) + ", logo=" + logo + ", alphaPrefix=" + alphaPrefix + ", pcpRequired="
				+ pcpRequired + ", planCodeList=" + Arrays.toString(planCodeList) + ", planCode=" + planCode
				+ ", planDescription1=" + planDescription1 + ", planDescription2=" + planDescription2 + ", rxBin="
				+ rxBin + ", rxPcn=" + rxPcn + ", rxLogo=" + rxLogo + ", coPayList=" + Arrays.toString(coPayList)
				+ ", copay=" + copay + ", copayMap=" + copayMap + ", tfns=" + tfns + ", claimRouteStateCode="
				+ claimRouteStateCode + ", memberServices=" + memberServices + ", claimsAndAddressEnquiry1="
				+ claimsAndAddressEnquiry1 + ", claimsAndAddressEnquiry2=" + claimsAndAddressEnquiry2 + ", nursuryLine="
				+ nursuryLine + ", preCertification=" + preCertification + ", lhoUrl=" + lhoUrl
				+ ", pharmacistQuestions=" + pharmacistQuestions + ", idCardSticker=" + idCardSticker
				+ ", coverageWhileTravelling=" + coverageWhileTravelling + ", tagLineState=" + tagLineState
				+ ", isIdCardPerisisted=" + isIdCardPerisisted + ", isIdCardActivated=" + isIdCardActivated + "]";
	}
	
	
	
	
}

