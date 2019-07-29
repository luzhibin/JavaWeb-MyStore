package Web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.GoodsService;
import domain.Goods;

/**
 * Servlet implementation class GoodServlet
 */
@WebServlet("/GoodServlet")
public class GoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.连接数据库
/*		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		//2.从数据库中获取数据
		String sql = "SELECT * FROM goods";
		List<Goods> allGoods = null;
		try {
			allGoods = qr.query(sql, new BeanListHandler<Goods>(Goods.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}*/
		GoodsService goodsService = new GoodsService();
		List<Goods> allGoods = goodsService.findAllGoods();
		System.out.println("Mystore3333333");
		//3.把从数据库中取出的数据存放到request域中
		request.setAttribute("allGoods", allGoods);
		//4.转发到商品列表页面，转发时把request对象传入
		request.getRequestDispatcher("/goods_list.jsp").forward(request, response);

	}

}
