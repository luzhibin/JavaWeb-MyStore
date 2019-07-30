package Service;

import java.util.List;

import Dao.GoodsDao;
import domain.Goods;

public class GoodsService {

	public List<Goods> findAllGoods() {
		GoodsDao goodsDao = new GoodsDao();
		return goodsDao.findAllGoods();
	}

}
