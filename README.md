## JavaWeb-MyStore 
### 项目名称：蚂蚁商城（含后台商品管理系统）  
### 项目描述：
这是一个基于JavaWeb的购物商城，使用MVC设计模式模型【（Model）、视图（View）和控制器（Controller）】+三层架构，降低了各层之间代码的耦合度，并对一些类进行了封装，降低功能代码之间的关联，创建了更清晰的抽象，该项目实现了商城系统的一些基本功能  
### 环境部署：  
  * 我的环境：IDE工具用的是eclipse，JDK1.8.0+Tomcat8.5.33，数据库使用的是Mysql  
### 项目运行：  
  * 使用Eclipse导入项目（IDEA也行），这里以eclipse为例，导入后报错的请自行 **Configure Build Path** 进行配置Tomcat等操作       
  * 打开WebContent --> WEB-INF --> lib ,然后将所有jar包 **Build Path**  
  * 导入sql文件夹里的**mystore.sql**到Mysql数据库中，根据本机数据库的端口号、用户名和密码修改**db.properties**
  文件，以确保能成功加载配置文件并连接数据库  
  * 最后运行index.jsp文件或者直接将整个工程Run On Server  
### 关于项目中的包描述：
 * domain包：里面存放的都是domain实体类（domain类是Javabean的子类，所以要重写Getter和Setter方法，另外还需要重写toString方法，
 如果不重写toString方法，那么输出的会是内存地址而不是具体数据）  
   * user.java：用户的实体类，包括uid(唯一识别每个用户)、username（用户名）、password（登录密码）、phone（电话号码）、code（注册时的验证码）  
   * Goods.java：商品的实体类，包括id、name、price、image，其中image存放的并非图片，而是图片的路径  
 *  JDBCUtil包：里面存放jdbc工具类，将jdbc连接数据库的操作抽象成JDBC工具类，提高代码的可重用性。本项目通过原生JDBC加载配置文件 连接数据库 调用数据库连接池来获取数据，调用Statement接口的PrepareStatement子接口进行预编译，从而实现DML和DQL操作    
 * Web包：三层架构中的Web层，负责管理用户的请求和响应，提供控制器来将调用委托到Service层其他上游处理    
 * Service包：负责三层架构中的Service层（业务逻辑层），调用对应的Dao进行数据库的CRUD操作  
 * Dao包：负责三层架构中的Dao层（持久层），由DAO来管理各种数据源的连接和实现数据库的CRUD操作
 ### 项目总结：（通过该项目学到了什么）
 * http请求参数与请求方式
 * http响应内容与响应的结构
 * Tomcat服务器
   * 下载安装与目录结构
   * Context配置文件属性
 * HTML+CSS+JavaScript
 * Servlet
   * 什么是Servlet
   * Servlet创建过程
   * 使用注解创建Servlet
   * doPost、doGet、Service方法以及其内部调用流程
 * Java反射机制
 * Response响应
   * Response响应流程
   * 设置响应行，添加修改响应头
   * Response重定向
   * Response解决中文乱码
 * I/O流
   * FileInputStream读取多个字符、读取整个文件
   * 文件下载
 * Request请求
   * request请求方式、请求行、请求头
   * 获取多个请求参数
   * request请求转发
   * request域对象
 * 登录注册功能
   * JS表单验证
   * lombok插件
 * Cookie与session会话
   * 创建cookie、删除cookie
   * 设置cookie持久化时间和携带路径
   * session原理
   * session域对象和生命周期
   * Session域持久化JSessionID
 * JSP
   * 什么是JSP、JSP工作原理
   * JSP指令和JSP内置对象
 * EL表达式与JSTL表达式
   * EL表达式基本使用
   * EL表达式简写与内置对象
   * JSTL表达式foreach循环
   * EL表达式结合JSTL表达式
 * MVC设计模式与三层架构
   * 商品模块的业务分析与业务逻辑
   * 商品CRUD操作
   * 商品分类展示
   * 数据库乱码与集合反转
   * 通用Servlet与抽取BaseServlet
 * 分页算法与数据展示
 * 监听器与过滤器Filter
 * Jrebel热部署
