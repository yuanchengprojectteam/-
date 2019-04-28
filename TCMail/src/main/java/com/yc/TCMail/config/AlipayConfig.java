package com.yc.TCMail.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016100100638754";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCM/cF1lmjtcFcN71GfNL9Ca7TPlEQ+Y0GHva5wLwELRsjUlMsOwqzb/r4/XNCSRb3VIyXyblibusQry00L4y9o0W3bvMidZYbXfcs/zBrTo8Fmh+1GyVnuSlVnc3OBRkr0hLDnFgOSlB0CO5J+JEZBeRryu64Xd5b3f5bkJS+KAp00LSnqYaz7JdJ2dOkCyWrFQ/sXQm6zZCJVztfb26b3s7b+nc6aawhY+K9RgC2mQoHXzT52A175RgcC/fHTzCCSUYeyx22sZs1CnkjxS1rLDkAWImq8EtTftnqR68T+mr84zzN2dILHPe3KDAMOgmJ6u8BxokfUjdzQS3UyXcDbAgMBAAECggEASGPNncNBUo/4kpYK0XRysva8GkxlEadCsSBJ3R21KoYIfWV8MLLxr+7G3Z+ZE1Etm651QFk5s5OcP2Qdxfm6kNXe0xDF7FKBfkj/P11bdMjCdxNZV5vwSbHu0bPsXTarK4qpjay23t6fWlMd7xhO3jUBChok07W6VI80+STCmNfjTee6MgtZqUGAyb/ElaQJMZdJHHf01IMyPjP546jSWF5AKd6dXJ97RuR3zxG0qgAspK9bDwZYzdtRlTbJg+Em1NR+HMK3tcXYTlfC6hAiaBA3/02O8v8EbCP4qdhqwvmtkwzvnL0ea7CLx/QFmDoeU8KP5zq9LeKezL+xyuV2kQKBgQDd6fCKYw/EXhd+u7hLvkbKgy02m9VECJqBCVYejgItXlzKb3phcQmZcVDuI+IF95BQbjvmR5znKuhaKxFBG0cJOyyRSDi/R2HiOjGn5tMFj9/+nUpzYeuxpkWh1C80vK6nCdCnSXDdDQizK3ReDhk75vgfIw3AGZOGbEw8kat9yQKBgQCipcppbC2g6VrY9zFk1Ca7Fi4G/DDFwG6aT8OfmX9hr4zcQxFycoZPSn/v1WwoVsO7aA+26Z8MtRlWUl8rU1JJl1Cj5/PydY/x+kANV2iuB5oDqy5kATVkR14zd6bI8P48OXllTy0OZifQBUsqTHRUhcYkrsM9azPRZKez6u7LgwKBgH2QEvSanJ9FhhHFccAZx8BqfLi7b+5w18tPVxUu0PiOvf4lGZ/s77uMrHgygX9S1qtL1ES2HIeIdbQfTkIChy0n+E20CbfhUfdJajNQnfI1uE4+/ZNPwqbgJ+IrRxKV+FS3bwJYwa2x5ExMuClH3OtSAu7LTMp3LkwPFwvmeJxRAoGBAJ4CWqYYRiuxCGUHoKDHyeivH4ABuJAk5k5bdzyxrqKEHWBOd8CrqfeV9LxWpoB56iVCbyHPzIhX14mY9IPuql579geF6+R8eZ8m8tsDM9r9343421SkJ+6HtuhhMVK9bP+tBlZ5mNgIPl1FB0TMiacjXt98OIiOgQTHuHR9pAdpAoGAXlX5VZF+CNHvKoNhaoaKh32PxvvhAO1b93d1mBGt4Rb2gqbJ7vydRZdP0h1OBrDHKxz+E0HxEHIWzrz+Rz0qnaEZsHzEYF6Nb8fAATwKRTCc66WyVIj6XAF9FArhEhA7VFk+2qoR6Z6gUWxmVnS8+xfIUy/k1Udv36KShReWLxE=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjP3BdZZo7XBXDe9RnzS/Qmu0z5REPmNBh72ucC8BC0bI1JTLDsKs2/6+P1zQkkW91SMl8m5Ym7rEK8tNC+MvaNFt27zInWWG133LP8wa06PBZoftRslZ7kpVZ3NzgUZK9ISw5xYDkpQdAjuSfiRGQXka8ruuF3eW93+W5CUvigKdNC0p6mGs+yXSdnTpAslqxUP7F0Jus2QiVc7X29um97O2/p3OmmsIWPivUYAtpkKB180+dgNe+UYHAv3x08wgklGHssdtrGbNQp5I8Utayw5AFiJqvBLU37Z6kevE/pq/OM8zdnSCxz3tygwDDoJiervAcaJH1I3c0Et1Ml3A2wIDAQAB";

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
	
	// 
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

