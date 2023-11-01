package com.javaproject.nobrand.goods.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.nobrand.goods.domain.Goods;

@Repository("goodsDAO")
public class GoodsDAOImpl implements GoodsDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
//	public void setDataSource(DataSource dataSource) {
//		jdbcTemplate=new JdbcTemplate(dataSource);
//	}
	private RowMapper<Goods> mapper = new RowMapper<Goods>() {
		@Override
		public Goods mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new Goods(
					rs.getInt("ID"),
					rs.getInt("PRICE"),
					rs.getInt("SEARCH_COUNT"),
					rs.getInt("SELL_COUNT"),
					rs.getInt("GOODS_COUNT"),
					rs.getString("NAME"),
					rs.getString("KIND_BOTTOM"),
					rs.getString("INFO"),
					rs.getString("IMAGE"),
					rs.getString("OPTION"),
					rs.getString("DELIVERY"),
					rs.getString("CONTENT")
					);
		}
	};
	@Override
	public void add(Goods goods) {
		// TODO Auto-generated method stub
		jdbcTemplate.update("insert into GOODS ("
							+ "\"PRICE\","
							+ "\"SEARCH_COUNT\","
							+ "\"SELL_COUNT\","
							+ "\"GOODS_COUNT\","
							+ "\"NAME\","
							+ "\"KIND_BOTTOM\","
							+ "\"INFO\","
							+ "\"IMAGE\","
							+ "\"OPTION\","
							+ "\"DELIVERY\","
							+ "\"CONTENT\") values (?, ? ,? ,? ,? ,? ,? ,? ,?, ?, ?)",
							goods.getPrice(),
							goods.getSearchCount(),
							goods.getCellCount(),
							goods.getGoodsCount(),
							goods.getName(),
							goods.getBottomKind(),
							goods.getInfo(),
							goods.getImgAdress(),
							goods.getOptions(),
							goods.getDelivery(),
							goods.getContent()
							);
	}
	@Override
	public Goods get(int id) {
		// TODO Auto-generated method stub
		return jdbcTemplate.queryForObject("select * from GOODS where \"ID\"=?", new Object[] { id }, mapper);
	}
	@Override
	public List<Goods> getAll() {
		// TODO Auto-generated method stub
		return jdbcTemplate.query("select * from GOODS",mapper);
	}
	
	@Override
	public void update(Goods goods) {
		// TODO Auto-generated method stub
		jdbcTemplate.update("update GOODS set ("
				+ "\"PRICE\"=?,"
				+ "\"SEARCH_COUNT\"=?,"
				+ "\"SELL_COUNT\"=?,"
				+ "\"GOODS_COUNT\","
				+ "\"NAME\"=?,"
				+ "\"KIND_BOTTOM\"=?,"
				+ "\"INFO\"=?,"
				+ "\"IMAGE\"=?,"
				+ "\"OPTION\"=?,"
				+ "\"DELIVERY\"=?,"
				+ "\"CONTENT\"=?) where \"ID\"=? ",
				goods.getPrice(),
				goods.getSearchCount(),
				goods.getCellCount(),
				goods.getGoodsCount(),
				goods.getName(),
				goods.getBottomKind(),
				goods.getInfo(),
				goods.getImgAdress(),
				goods.getOptions(),
				goods.getDelivery(),
				goods.getContent()
				);
	}
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		jdbcTemplate.update("delete from GOODS where \"ID\"=?");
	}}