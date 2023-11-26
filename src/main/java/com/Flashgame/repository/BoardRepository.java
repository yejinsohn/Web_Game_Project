package com.Flashgame.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Flashgame.model.Board;

public interface BoardRepository extends JpaRepository<Board, Integer>{

}