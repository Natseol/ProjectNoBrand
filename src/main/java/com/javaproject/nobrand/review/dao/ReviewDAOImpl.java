package com.javaproject.nobrand.review.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.nobrand.review.domain.Review;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO{
	@Autowired
	private JdbcTemplate jdbctemplate;
//	public void setDataSource(DataSource dataSource) {
//		jdbctemplate=new JdbcTemplate(dataSource);
//	}
	private RowMapper<Review> mapper=new RowMapper<Review>() {
		public Review mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new Review(
					rs.getInt("GOODSID"),
					rs.getInt("SCORE"),
					rs.getInt("COUNT"),
					rs.getDate("CREATEAT")
					);
		}
	};


	@Override
	public void add(Review review) {
		jdbctemplate.update("insert into review ( "
				+ "\"GOODS_ID\", \"SCORE\", \"COUNT\") "
				+ "values( ?, ?, ?)",
				review.getGoodsId(),
				review.getScore(),
				review.getCount()
				);
		// TODO Auto-generated method stub
	}
	@Override
	public Review get(int id) {
		// TODO Auto-generated method stub
		return jdbctemplate.queryForObject("select * from review where \"GOODS_ID\"=?", new Object[] { id },mapper);
	}

	@Override
	public List<Review> getAll() {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from review", mapper);
	}

	@Override
	public void update(Review review) {
		// TODO Auto-generated method stub
		jdbctemplate.update("update review set("
				+"\"GOODS_ID\"=?,"
				+ "\"SCORE\"=?,"
				+ "\"COUNT\"=?,"
				+ "\"CREATEAT\"=?) where \"GOODS_ID\"=?",
				review.getGoodsId(),
				review.getScore(),
				review.getCount(),
				review.getCreateAt()
				);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		jdbctemplate.update("delete from review where \"GOODS_ID\"=?");
	}

}