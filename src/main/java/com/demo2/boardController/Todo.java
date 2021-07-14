package com.demo2.boardController;

import java.util.*;

public class Todo {
	private List<String> todo = new ArrayList<>();

	public Todo(String todo) {
		super();
		this.todo.add(todo);
	}

	public List<String> getTodo() {
		return todo;
	}

	public void addTodo(String todo) {
		this.todo.add(todo);
	}

	public void deleteTodo(int index) {
		todo.remove(index);
	}

}
