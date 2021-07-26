package com.demo2.taskManager.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import com.demo2.taskManager.board.domain.BoardVO;

public interface BoardMapper {
	@Select("select * from tbl_emp")
	public List<BoardVO> getList();
}
