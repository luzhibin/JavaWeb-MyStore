## JavaWeb-MyStore  
### ��Ŀ���ƣ������̳�  
### ��Ŀ������
����һ������JavaWeb�Ĺ����̳ǣ�ʹ��MVC���ģʽģ�͡���Model������ͼ��View���Ϳ�������Controller����+����ܹ��������˸���֮��������϶ȣ�����һЩ������˷�װ�����͹��ܴ���֮��Ĺ����������˸������ĳ��󣬸���Ŀʵ�����̳�ϵͳ��һЩ��������  
### ��������  
  * �ҵĻ�����IDE�����õ���eclipse��JDK1.8.0+Tomcat8.5.33�����ݿ�ʹ�õ���Mysql  
### ��Ŀ���У�  
  * ʹ��Eclipse������Ŀ��IDEAҲ�У���������eclipseΪ��������󱨴��������� **Configure Build Path** ��������Tomcat�Ȳ���       
  * ��WebContent --> WEB-INF --> lib ,Ȼ������jar�� **Build Path**  
  * ����sql�ļ������**mystore.sql**��Mysql���ݿ��У����ݱ������ݿ�Ķ˿ںš��û����������޸�**db.properties**
  �ļ�����ȷ���ܳɹ����������ļ����������ݿ�  
  * �������index.jsp�ļ�����ֱ�ӽ���������Run On Server  
### ������Ŀ�еİ�������
 * domain���������ŵĶ���domainʵ���ࣨdomain����Javabean�����࣬����Ҫ��дGetter��Setter���������⻹��Ҫ��дtoString������
 �������дtoString��������ô����Ļ����ڴ��ַ�����Ǿ������ݣ�  
   * user.java���û���ʵ���࣬����uid(Ψһʶ��ÿ���û�)��username���û�������password����¼���룩��phone���绰���룩��code��ע��ʱ����֤�룩  
   * Goods.java����Ʒ��ʵ���࣬����id��name��price��image������image��ŵĲ���ͼƬ������ͼƬ��·��  
 *  JDBCUtil����������jdbc�����࣬��jdbc�������ݿ�Ĳ��������JDBC�����࣬��ߴ���Ŀ������ԡ�����Ŀͨ��ԭ��JDBC���������ļ� �������ݿ� �������ݿ����ӳ�����ȡ���ݣ�����Statement�ӿڵ�PrepareStatement�ӽӿڽ���Ԥ���룬�Ӷ�ʵ��DML��DQL����    
 * Web��������ܹ��е�Web�㣬��������û����������Ӧ���ṩ��������������ί�е�Service���������δ���    
 * Service������������ܹ��е�Service�㣨ҵ���߼��㣩�����ö�Ӧ��Dao�������ݿ��CRUD����  
 * Dao������������ܹ��е�Dao�㣨�־ò㣩����DAO��������������Դ�����Ӻ�ʵ�����ݿ��CRUD����