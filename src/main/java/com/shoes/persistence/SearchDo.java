package com.shoes.persistence;

import java.util.List;

import com.shoes.domain.ShoesMain;

public interface SearchDo {
	List<ShoesMain> searchIt(String title);
}
