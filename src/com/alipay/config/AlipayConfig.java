package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {

	//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	    public static String app_id = "2016092900622292";

	    // 商户私钥，您的PKCS8格式RSA2私钥
	    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCGIPTR7prTvnqjulA06cIKl0WAVKX1FL30PevggnDpLRxwIkt5JTdSVxrbdxYk30CSeTxoa5HRYjk+X72yuvXBjqncaMPPcT7kaK7NE8pvvhg6jtM5jubeQJTHvVbQLLjyzd8uMZMJYHBUFXTC3VNaLxN4k7PYR7cQVZ0zQlXAZPuDM85HBTHx1ilabRCjpE1wk6KNLPVJeOkQnFhIhbxkWnUSXri3CUSA9LHgGRY66tgOeRxCKxsOOCNmmnW8xehZQbw690IZLZSKk+E+j1Dp40tQZ3KiRhq2mBSd6++/I4cnKK+qZJWlDs6Rq4N1WNNlf7hHaIZAzjDJGwXg/G5fAgMBAAECggEAfm9+mI5FoKiDzucISHi6E2W5fFlO/5IH5b6hJUeQzB1cG1AYuSAd4B6AELVXSHay1eA202/jSu8+as+xcFPQ6h5jfIO9YUStNn5/mI25XFBjYn/UGQPeGU/jb83Jkf82cJskcNUGd+ZSvNBk+nPL6M1Lm3QQKiagKGOsBe/YCb1A33h4JMKwD09YiQD7e/rAjyS6vVIIvNx2XPUa9nZoIoBYqYHBFV2iYbhJvaveM2RkNy9rXtC3bNx6Cg97JfMlLzIGK7+iigV98m3FTBcehPLrfPpdnXCN2+V9ngGsBw8TzpzkOiwNRUbKDCbCL/4L26pmBQ1f4sIQ9kglRSjewQKBgQDo3DIk5PANYnYwZ9RG1Uji12w5HNoNoMbDA1JtG58SNgInSOUzVwfTiA6OYG8Aef5Ws8LEDkgeis2/azsys/ltipdjS53ZRMyjVGufmPBs3wRbDCzkqErNlQ/Edloe6SIWqFoTTdCVs9w2EcXxAkAtEr11Mg29pYv1C3apJ02bUQKBgQCTdRm22pl2IuQOB7uJaiYoOv/4k3xLLKgXLYWftYKt0umf4s7/kJf7GTGK8kkT15rdSKFEOm8BumN5j5vOnE1/oRxqCJPz8NSSqlPiXQbRB7UPDDAI9YWrAzw1dBwc9s/sxXLpaIlC3DRdIXAkRO6/XJqGDPYu4oqxuT605sairwKBgQDhkp1IvDYG4UDYt1wdmfNXO5Ps55Qb64lf1FH+u+kmfQctAyJ0z3QXaA+hwK0G6yaE2vJrdeJLI+8X5UqdXVbc1Iq+d7vbgxgxiFARdNhCvu+7O1opzxVXfXSevn+ivfh1tnQ7iv/qZSeHgUQcqi98+lBpvSkuc7XWlVpHlnlJYQKBgHfGCUIGo9pakuV2kHUYvK+25M4TdkVVm59gAYbtl5z7kXqmbz8VQu3Z0+0pygQNACS35w4VbK95p21JIeSb/zMpOXxDRXJC71fGdGaM64mEeiQj4SyVyaJT+WbtzhwUumV3KFTA7aVaWko/a+h5+XeEj5tNEfaZWtDrSC0GutfPAoGAfTKbsuJCzl4NAkJ4WOcaIyJJIEvf3ANSgsTJM3q0pEOTDS3aO3ozW4Nyi6729hPSglWXJAOxEX8CmVpjZvZSb8LtD6RfWELsaoV6SfLMZrOxNcw//G+rr+LTd18eP4YYm802NXy6SnkinnWbQ9XC5vp6+sEKssN6omCpQG+iklk=";

	    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	    public static String alipay_public_key ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwWlS3IN/Gl/u98tTElQkn8zStV2oRVNyWKbI39q0k4viaNVZuGGF9ng48++iWqG1dS0XD0ORs9zpGKgk8gkMLFjmRxMm+MhbdQzhN4lvYGdaEPFyf4uIp+SWuWEQ+y4gUEZnt+NQbvzvqLnJYU5gl0XdnQCATmQT4a+OJSu4Jse8EKGu88OhCDaenCv7JbGB8rydzT4il5FQZQ812Gd1nOHm7QTAUlOhGloIA/Shk5s6czCeIB4SoLYqjD6Xy6eRn0MEeGXd9LCetjkwTIW+l0F6kiOL7tqyiS9RR1gVq4/I2n+Ia5pmK9LpFesR6I1lq/wLgcoFQe77eNtGmEQ20QIDAQAB";
	    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	    public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	    public static String return_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

	    // 签名方式
	    public static String sign_type = "RSA2";

	    // 字符编码格式
	    public static String charset = "utf-8";

	    // 支付宝网关
	    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

	    // 支付宝网关
	    public static String log_path = "C:\\";


	//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

	    /**
	     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
	     * @param sWord 要写入日志里的文本内容
	     */
	    public static void logResult(String sWord) {
	        FileWriter writer = null;
	        try {
	            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
	            writer.write(sWord);
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            if (writer != null) {
	                try {
	                    writer.close();
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
	    }
	}
