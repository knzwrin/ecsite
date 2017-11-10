package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemDetailSearchDAO;
import com.internousdev.ecsite.dto.ItemDetailSearchDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemDetailSearchAction extends ActionSupport implements SessionAware{

	private String itemId;
	public Map<String, Object> session;
	private ItemDetailSearchDAO itemDetailSearchDAO = new ItemDetailSearchDAO();
	private ItemDetailSearchDTO itemDetailSearchDTO = new ItemDetailSearchDTO();

	public String execute(){
		String result = SUCCESS;
		itemDetailSearchDTO = itemDetailSearchDAO.getItemDetailInfo(itemId);
		session.put("itemId", itemDetailSearchDTO.getItemId());
		session.put("itemName", itemDetailSearchDTO.getItemName());
		session.put("itemPrice", itemDetailSearchDTO.getItemPrice());
		session.put("itemImg", itemDetailSearchDTO.getItemImg());
		session.put("category_id", itemDetailSearchDTO.getCategoryId());
		session.put("category_word", itemDetailSearchDTO.getCategoryWord());
		session.put("insert_date", itemDetailSearchDTO.getInsert_date());
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}
}
