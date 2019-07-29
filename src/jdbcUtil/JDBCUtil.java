 package jdbcUtil;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSourceFactory;

public class JDBCUtil {
	private JDBCUtil(){}
	public static DataSource ds = null;
	static {// 只加载一次驱动就够了，为了保证代码只执行一次，使用静态代码块：当类加载的时候就会执行里面的内容
		try {
			//1.加载配置文件
			Properties p = new Properties();
			String path = JDBCUtil.class.getClassLoader().getResource("db.properties").getPath();
			FileInputStream in = new FileInputStream(path);
			p.load(in);
			ds = DruidDataSourceFactory.createDataSource(p);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//获取数据源
	public static DataSource getDataSource() {
		return ds;
	}
	public static Connection getConn() {
		try {
			// 2.连接数据库
			return ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public static void close(Connection conn, Statement st, ResultSet rs) {
		// 5.释放资源【释放资源时先释放ResultSet,再释放Statement,最后释放Connection】
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
		if (st != null) {
			try {
				st.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e3) {
				e3.printStackTrace();
			}
		}
	}
}
