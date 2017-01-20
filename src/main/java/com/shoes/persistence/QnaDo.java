package com.shoes.persistence;

import java.util.List;

import com.shoes.domain.Qna;

public interface QnaDo {
	void qnaRegister(Qna qna);
	List<Qna> getLists(int num);
	Qna getList(int num);
	int getCount();
}
