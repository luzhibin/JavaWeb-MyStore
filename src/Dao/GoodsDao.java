package Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import domain.Goods;
import jdbcUtil.JDBCUtil;

public class GoodsDao {

	public List<Goods> findAllGoods() {
		//1.连接数据库
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		//2.从数据库中获取数据
		String sql = "SELECT * FROM goods";
		List<Goods> allGoods = null;
		try {
			allGoods = qr.query(sql, new BeanListHandler<Goods>(Goods.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(allGoods);
		return allGoods;

	}

}
