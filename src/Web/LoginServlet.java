package Web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.user;
import jdbcUtil.JDBCUtil;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取用户名和密码
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		System.out.println(name+"|密码："+pwd);
		//到数据库中查询有没有该用户
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		String sql = "select * from user where username=? and password=?";
		user u = null;
		try {
			 u = qr.query(sql, new BeanHandler<>(user.class),name,pwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");
		//判断有没有值
		if (u != null) {
			response.getWriter().write("登陆成功");
			//保存用户（四个域 用session域）
			HttpSession session = request.getSession();
			session.setAttribute("user",u); 
			//跳转到主页面
			response.setHeader("refresh", "3,url=/5-79-JavaWeb-Mystore/index.jsp");
		}else {
			response.getWriter().write("登录失败");
			//跳转回注册页面
			response.setHeader("refresh", "3,url=/5-79-JavaWeb-Mystore/login.jsp");
		}
	}
}