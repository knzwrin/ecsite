package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import com.internousdev.ecsite.dao.WordSearchDAO;
import com.internousdev.ecsite.dto.SearchDTO;
import com.opensymphony.xwork2.ActionSupport;

public class WordSearchAction extends ActionSupport{
	private String searchWord;
	private WordSearchDAO wordSearchDAO = new WordSearchDAO();
	private ArrayList<SearchDTO> searchDTO = new ArrayList<SearchDTO>();

	public String execute() throws SQLException{
		String result = SUCCESS;

		searchDTO = wordSearchDAO.getItemInfo(searchWord);
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
}
