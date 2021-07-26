package com.demo2.taskManager.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo2.taskManager.board.domain.BoardDao;
import com.demo2.taskManager.board.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Resource
	private BoardDao boardDao;
	
	public BoardDao getBoardDao() {
		return boardDao;
	}
	
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	
	@Override
	public List<BoardVO> list() {
		// TODO Auto-generated method stub
		return boardDao.list();
	}

	@Override
	public int delete(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDao.delete(boardVO);
	}

	@Override
	public int edit(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDao.update(boardVO);
	}
	
	@Override
	public void write(BoardVO boardVO) {
		// TODO Auto-generated method stub
		boardDao.insert(boardVO);
	}

	@Override
	public BoardVO read(int seq) {
		// TODO Auto-generated method stub
		boardDao.updateReadCount(seq);
		return boardDao.select(seq);
	}

	

	
}
