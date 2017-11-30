package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.WordSearchDAO;
import com.internousdev.ecsite.dto.SearchDTO;
import com.opensymphony.xwork2.ActionSupport;

public class WordSearchAction extends ActionSupport implements SessionAware{
	private String searchWord;
	public Map<String,Object> session;
	private WordSearchDAO wordSearchDAO = new WordSearchDAO();
	private ArrayList<SearchDTO> searchDTO = new ArrayList<SearchDTO>();

	public String execute() throws SQLException{
		String result = SUCCESS;

		
//		はじめて来たときに空白か確認。戻ってきたときは
		if(!(session.containsKey("searchWord"))){
			if(searchWord.equals("")){
				return ERROR;
			}
		}

		if(!(session.containsKey("searchWord"))){
		session.put("searchWord", searchWord);
		}

		searchDTO = wordSearchDAO.getItemInfo(session.get("searchWord").toString());

		Iterator<SearchDTO> iterator = searchDTO.iterator();
		if (!(iterator.hasNext())) {
			result = ERROR;
			return result;
		}
		return result;
	}

	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public ArrayList<SearchDTO> getSearchDTO() {
		return searchDTO;
	}

	public void setSearchDTO(ArrayList<SearchDTO> searchDTO) {
		this.searchDTO = searchDTO;
	}
}
