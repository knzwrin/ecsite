package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{///要検討

	public Map<String,Object> session;

	private BuyItemDAO buyItemDAO = new BuyItemDAO();

	/**
	 * 商品購入情報登録メソッド
	 *
	 * @author internous
	 */
	public String execute() throws SQLException {

		buyItemDAO.buyItemInfo(
				session.get("userName").toString(),
				session.get("itemName").toString(),
				session.get("total_price").toString(),
				session.get("count").toString(),
				session.get("pay").toString()
				);

		String result = SUCCESS;
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}