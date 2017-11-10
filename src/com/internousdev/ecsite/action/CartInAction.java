package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class CartInAction extends ActionSupport implements SessionAware{

		private int count;
		private String pay;
		public Map<String,Object> session;

		public String execute(){
			String result = ERROR;
			if(session.containsValue("userName")){//////////////////////// 要検討 ///////////////////////////////////
					result = SUCCESS;
				session.put("count", count);
				int intCount = Integer.parseInt(session.get("count").toString());
				int intPrice = Integer.parseInt(session.get("item_price").toString());

				session.put("total_price", intCount*intPrice);

				String payment;
				if(pay.equals("1")) {
					payment = "代金引換";
					session.put("pay", payment);
				} else if(pay.equals("2")){
					payment = "クレジットカード";
					session.put("pay", payment);
				}else if(pay.equals("3")){
					payment = "コンビニ・郵便局受け取り";
					session.put("pay", payment);
				}
			}
			return result;
		}

		public int getCount() {
			return count;
		}

		public void setCount(int count) {
			this.count = count;
		}

		public String getPay() {
			return pay;
		}

		public void setPay(String pay) {
			this.pay = pay;
		}

		@Override
		public void setSession(Map<String, Object> session) {
			this.session = session;
		}
}

