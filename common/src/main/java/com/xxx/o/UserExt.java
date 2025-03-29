package com.xxx.o;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class UserExt implements Serializable {
	private static final long serialVersionUID = -6078493661819575275L;
	private Long boundMerchantId;
	private Merchant selectedMerchant;
	private List<Merchant> allMerchantList;
	private Map<Long, Merchant> allMerchantMap;
	public Long getBoundMerchantId() {
		return boundMerchantId;
	}
	public void setBoundMerchantId(Long boundMerchantId) {
		this.boundMerchantId = boundMerchantId;
	}
	public Merchant getSelectedMerchant() {
		return selectedMerchant;
	}
	public void setSelectedMerchant(Merchant selectedMerchant) {
		this.selectedMerchant = selectedMerchant;
	}
	public List<Merchant> getAllMerchantList() {
		return allMerchantList;
	}
	public void setAllMerchantList(List<Merchant> allMerchantList) {
		this.allMerchantList = allMerchantList;
	}
	public Map<Long, Merchant> getAllMerchantMap() {
		return allMerchantMap;
	}
	public void setAllMerchantMap(Map<Long, Merchant> allMerchantMap) {
		this.allMerchantMap = allMerchantMap;
	}
}