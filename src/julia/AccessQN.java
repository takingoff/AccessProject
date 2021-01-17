/**
 * 2014�?�?�?下午2:54:14
 * 
 * TangLi
 */
package julia;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author TangLi
 *
 */
public class AccessQN
{

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception
	{
		List<String> list = new ArrayList<String>();
		list.add("431997751");
		list.add("841180866");
		list.add("853935206");
		list.add("991487707");
		list.add("466314555");
		list.add("1277485787");
		
		list.add("773299394");
		list.add("376292419");
		list.add("1182560844");
		list.add("851721473");
		list.add("642068598");
		list.add("804882641");
		list.add("1508121305");
		list.add("1031372419");
		list.add("839828838");
		list.add("1084728078");
		list.add("1160524207");
		list.add("1161773113");
		list.add("1550162558");
		list.add("785625159");
		list.add("1550169067");
		list.add("917387049");
		list.add("1366048174");
		list.add("1003358961");
		list.add("1247543099");
		list.add("526615094");
		list.add("920066970");
		list.add("603551285");
		list.add("741995745");
		list.add("782126079");
		list.add("1445195084");
		list.add("790426906");
		list.add("906257454");
		list.add("841273468");
		list.add("496644769");
		list.add("1303881610");
		
		
		int i = 0 ;
		while(true)
		{
			
			for(String name:list)
			{
				accessEmotion("http://g.qzone.qq.com/fcg-bin/cgi_emotion_list.fcg?uin="+name+"&loginUin=917401186&rd=0.5706572134513408&num=3&noflower=1&g_tk=702212512"
						, "pgv_pvi=48462848; RK=rNufpBvUae; randomSeed=216853; __Q_w_s__QZN_TodoMsgCnt=1; __Q_w_s_hat_seed=1; __Q_w_s__appDataSeed=1; isVideo_DC=0; o_cookie=917401186; pgv_pvid=1301525092; welcomeflash=1598553152_81695; pgv_info=ssid=s2758985835; today_lastyear_917401186=1406282130457; ptui_loginuin=917401186; pt2gguin=o0917401186; uin=o0917401186; skey=@r4d6DhNro; ptisp=ctc; ptcz=9fc1f26e6236f5a8d913da0b2fbce94cd1fca5ec5b54820f2dd6a01dbe7c8c22; Loading=Yes; p_skey=5K7IeSrL-doUYyJ*7yM*MebFI5QR0Y2f1XHJCP7Q62E_; pt4_token=Ouf0R4R4KvnfvKYYD56B3Q__; QZ_FE_WEBP_SUPPORT=1; cpu_performance_v8=4; qzspeedup=sdch; blabla=dynamic");
				accessfriendshow("http://g.qzone.qq.com/cgi-bin/friendshow/cgi_get_visitor_simple?uin="+name+"&clear=1&mask=2&fupdate=1&rd=0.6971031171269715&g_tk=702212512",
						"pgv_pvi=48462848; RK=rNufpBvUae; randomSeed=216853; __Q_w_s__QZN_TodoMsgCnt=1; __Q_w_s_hat_seed=1; __Q_w_s__appDataSeed=1; isVideo_DC=0; o_cookie=917401186; pgv_pvid=1301525092; welcomeflash=1598553152_81695; pgv_info=ssid=s2758985835; today_lastyear_917401186=1406282130457; ptui_loginuin=917401186; pt2gguin=o0917401186; uin=o0917401186; skey=@r4d6DhNro; ptisp=ctc; ptcz=9fc1f26e6236f5a8d913da0b2fbce94cd1fca5ec5b54820f2dd6a01dbe7c8c22; Loading=Yes; p_skey=5K7IeSrL-doUYyJ*7yM*MebFI5QR0Y2f1XHJCP7Q62E_; pt4_token=Ouf0R4R4KvnfvKYYD56B3Q__; QZ_FE_WEBP_SUPPORT=1; cpu_performance_v8=4; qzspeedup=sdch; blabla=dynamic");
				Thread.sleep(6000);
				
			}
			System.out.println(i++ +"**********");
			Thread.sleep(300000);
		}
		
//		accessEmotion();
//		accessfriendshow();
	}
	
	public static String targetId = "841180866";
//	public static String targetId = "431997751";
//	public static String targetId = "853935206";
//	public static String targetId = "991487707";
//	public static String targetId = "1277485787";
//	public static String targetId = "466314555";
	
	public static void accessEmotion(String urlStr,String cookieStr) throws Exception
	{
		URL url = new URL(urlStr);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.addRequestProperty("Cookie", cookieStr);
		
		connection.addRequestProperty("Accept", "*/*");
		connection.addRequestProperty("Accept-Encoding", "deflate");
		connection.addRequestProperty("Accept-Language", "zh-CN,zh;q=0.8,en;q=0.6");
		connection.addRequestProperty("Cache-Control", "max-age=0");
		connection.addRequestProperty("Connection", "keep-alive");
		connection.addRequestProperty("Host", "user.qzone.qq.com");
		connection.addRequestProperty("If-None-Match", "\"2616733937\"");
		connection.addRequestProperty("Referer", "http://user.qzone.qq.com/"+targetId+"/main");
		connection.addRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36");
		access("utf-8",connection);
	}
	
	public static void accessfriendshow(String urlStr,String cookieStr) throws Exception
	{
		URL url = new URL(urlStr);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.addRequestProperty("Cookie", cookieStr);
		
		connection.addRequestProperty("Accept", "*/*");
		connection.addRequestProperty("Accept-Encoding", "deflate");
		connection.addRequestProperty("Accept-Language", "zh-CN,zh;q=0.8,en;q=0.6");
		connection.addRequestProperty("Cache-Control", "max-age=0");
		connection.addRequestProperty("Connection", "keep-alive");
		connection.addRequestProperty("Host", "user.qzone.qq.com");
		connection.addRequestProperty("If-None-Match", "\"2616733937\"");
		connection.addRequestProperty("Referer", "http://user.qzone.qq.com/"+targetId+"/main");
		connection.addRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36");
		connection.addRequestProperty("X-Real-Url", "http://r.qzone.qq.com/cgi-bin/friendship/cgi_friendship?activeuin=917401186&passiveuin="+targetId+"&g_tk=310527350");
		
		access("utf-8",connection);
	}
	
	public static void accessfriendShip() throws Exception
	{
//		Accept:*/*
//		Accept-Encoding:gzip,deflate
//		Accept-Language:zh-CN,zh;q=0.8,en;q=0.6
//		Cache-Control:max-age=0
//		Connection:keep-alive
//		Cookie:pgv_pvi=48462848; ptui_loginuin=917401186; RK=rNufpBvUae; randomSeed=216853; __Q_w_s__QZN_TodoMsgCnt=1; __Q_w_s_hat_seed=1; __Q_w_s__appDataSeed=1; isVideo_DC=0; o_cookie=917401186; pgv_pvid=1301525092; qz_screen=1366x768; QZ_FE_WEBP_SUPPORT=1; cpu_performance_v8=10; pgv_info=ssid=s2614971125; p_skey=H8IvqFvT3KBsQyXiFPT8v-0ZIyvRF1RJXXRyQX1k*9E_; pt4_token=N1FKJFUxyFxTmlu4wK7kOA__; pt2gguin=o0917401186; uin=o0917401186; skey=@ISWcJfiBc; ptisp=ctc; ptcz=9fc1f26e6236f5a8d913da0b2fbce94cd1fca5ec5b54820f2dd6a01dbe7c8c22; qzspeedup=sdch; Loading=Yes; blabla=dynamic
//		Host:user.qzone.qq.com
//		If-None-Match:"2616733937"
//		Referer:http://user.qzone.qq.com/431997751/main
//		User-Agent:Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36
//		X-Real-Url:http://r.qzone.qq.com/cgi-bin/friendship/cgi_friendship?activeuin=917401186&passiveuin=431997751&g_tk=310527350		
		URL url = new URL("http://user.qzone.qq.com/p/r/cgi-bin/friendship/cgi_friendship?activeuin=917401186&passiveuin="+targetId+"&g_tk=310527350");
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		
		connection.addRequestProperty("Accept", "*/*");
		connection.addRequestProperty("Accept-Encoding", "deflate");
//		connection.addRequestProperty("Accept-Encoding", "gzip,deflate");///gzip 是压缩格式，发过来的看不懂�?deflate也是压缩只是这种压缩没有改变编码�?
		connection.addRequestProperty("Accept-Language", "zh-CN,zh;q=0.8,en;q=0.6");
		connection.addRequestProperty("Cache-Control", "max-age=0");
		connection.addRequestProperty("Connection", "keep-alive");
		connection.addRequestProperty("Cookie", "pgv_pvi=48462848; ptui_loginuin=917401186; RK=rNufpBvUae; randomSeed=216853; __Q_w_s__QZN_TodoMsgCnt=1; __Q_w_s_hat_seed=1; __Q_w_s__appDataSeed=1; isVideo_DC=0; o_cookie=917401186; pgv_pvid=1301525092; qz_screen=1366x768; QZ_FE_WEBP_SUPPORT=1; cpu_performance_v8=10; pgv_info=ssid=s2614971125; p_skey=H8IvqFvT3KBsQyXiFPT8v-0ZIyvRF1RJXXRyQX1k*9E_; pt4_token=N1FKJFUxyFxTmlu4wK7kOA__; pt2gguin=o0917401186; uin=o0917401186; skey=@ISWcJfiBc; ptisp=ctc; ptcz=9fc1f26e6236f5a8d913da0b2fbce94cd1fca5ec5b54820f2dd6a01dbe7c8c22; qzspeedup=sdch; Loading=Yes; blabla=dynamic");
		connection.addRequestProperty("Host", "user.qzone.qq.com");
		connection.addRequestProperty("If-None-Match", "\"2616733937\"");
		connection.addRequestProperty("Referer", "http://user.qzone.qq.com/"+targetId+"/main");
		connection.addRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36");
		connection.addRequestProperty("X-Real-Url", "http://r.qzone.qq.com/cgi-bin/friendship/cgi_friendship?activeuin=917401186&passiveuin="+targetId+"&g_tk=310527350");
		
		access("utf-8",connection);
	}
	
	public static void accessfeeds_html_module() throws Exception
	{
//		Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
//		Accept-Encoding:gzip,deflate,sdch
//		Accept-Language:zh-CN,zh;q=0.8,en;q=0.6
//		Cache-Control:max-age=0
//		Connection:keep-alive
//		Cookie:pgv_pvi=48462848; ptui_loginuin=917401186; RK=rNufpBvUae; randomSeed=216853; __Q_w_s__QZN_TodoMsgCnt=1; __Q_w_s_hat_seed=1; __Q_w_s__appDataSeed=1; isVideo_DC=0; o_cookie=917401186; pgv_pvid=1301525092; QZ_FE_WEBP_SUPPORT=1; cpu_performance_v8=10; pgv_info=ssid=s2614971125; p_skey=H8IvqFvT3KBsQyXiFPT8v-0ZIyvRF1RJXXRyQX1k*9E_; pt4_token=N1FKJFUxyFxTmlu4wK7kOA__; pt2gguin=o0917401186; uin=o0917401186; skey=@ISWcJfiBc; ptisp=ctc; ptcz=9fc1f26e6236f5a8d913da0b2fbce94cd1fca5ec5b54820f2dd6a01dbe7c8c22; qzspeedup=sdch; Loading=Yes; blabla=dynamic
//		Host:ic2.s8.qzone.qq.com
//		Referer:http://user.qzone.qq.com/431997751/main
//		User-Agent:Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36
		
		URL url = new URL("http://ic2.s8.qzone.qq.com/cgi-bin/feeds/feeds_html_module?i_uin="+targetId+"&i_login_uin=917401186&mode=4&previewV8=1&style=35&version=8&needDelOpr=true&transparence=true&hideExtend=false&showcount=5&MORE_FEEDS_CGI=http%3A%2F%2Fic2.s8.qzone.qq.com%2Fcgi-bin%2Ffeeds%2Ffeeds_html_act_all&refer=2&paramstring=os-win7|100");
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		
		connection.addRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
		connection.addRequestProperty("Accept-Encoding", "deflate");
//		connection.addRequestProperty("Accept-Encoding", "gzip,deflate");///gzip 是压缩格式，发过来的看不懂�?deflate也是压缩只是这种压缩没有改变编码�?
		connection.addRequestProperty("Accept-Language", "zh-CN,zh;q=0.8,en;q=0.6");
		connection.addRequestProperty("Cache-Control", "max-age=0");
		connection.addRequestProperty("Connection", "keep-alive");
		connection.addRequestProperty("Cookie", "pgv_pvi=48462848; ptui_loginuin=917401186; RK=rNufpBvUae; randomSeed=216853; __Q_w_s__QZN_TodoMsgCnt=1; __Q_w_s_hat_seed=1; __Q_w_s__appDataSeed=1; isVideo_DC=0; o_cookie=917401186; pgv_pvid=1301525092; QZ_FE_WEBP_SUPPORT=1; cpu_performance_v8=10; pgv_info=ssid=s2614971125; p_skey=H8IvqFvT3KBsQyXiFPT8v-0ZIyvRF1RJXXRyQX1k*9E_; pt4_token=N1FKJFUxyFxTmlu4wK7kOA__; pt2gguin=o0917401186; uin=o0917401186; skey=@ISWcJfiBc; ptisp=ctc; ptcz=9fc1f26e6236f5a8d913da0b2fbce94cd1fca5ec5b54820f2dd6a01dbe7c8c22; qzspeedup=sdch; Loading=Yes; blabla=dynamic");
		connection.addRequestProperty("Host", "ic2.s8.qzone.qq.com");
		connection.addRequestProperty("Referer", "http://user.qzone.qq.com/"+targetId+"/main");
		connection.addRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36");

		access("utf-8",connection);
	}
	
	public static void accessMain() throws Exception
	{
//		Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
//		Accept-Encoding:gzip,deflate
//		Accept-Language:zh-CN,zh;q=0.8,en;q=0.6
//		Cache-Control:max-age=0
//		Connection:keep-alive
//		Cookie:pgv_pvi=48462848; ptui_loginuin=917401186; RK=rNufpBvUae; randomSeed=216853; __Q_w_s__QZN_TodoMsgCnt=1; __Q_w_s_hat_seed=1; __Q_w_s__appDataSeed=1; isVideo_DC=0; o_cookie=917401186; pgv_pvid=1301525092; qz_screen=1366x768; QZ_FE_WEBP_SUPPORT=1; cpu_performance_v8=10; pgv_info=ssid=s2614971125; p_skey=H8IvqFvT3KBsQyXiFPT8v-0ZIyvRF1RJXXRyQX1k*9E_; pt4_token=N1FKJFUxyFxTmlu4wK7kOA__; pt2gguin=o0917401186; uin=o0917401186; skey=@ISWcJfiBc; ptisp=ctc; ptcz=9fc1f26e6236f5a8d913da0b2fbce94cd1fca5ec5b54820f2dd6a01dbe7c8c22; qzspeedup=sdch; Loading=Yes
//		Host:user.qzone.qq.com
//		If-Modified-Since:Fri, 25 Jul 2014 06:24:26 GMT
//		User-Agent:Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36
		
		URL url = new URL("http://user.qzone.qq.com/"+targetId+"/main");
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		
		connection.addRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
		connection.addRequestProperty("Accept-Encoding", "deflate");
//		connection.addRequestProperty("Accept-Encoding", "gzip,deflate");///gzip 是压缩格式，发过来的看不懂�?deflate也是压缩只是这种压缩没有改变编码�?
		connection.addRequestProperty("Accept-Language", "zh-CN,zh;q=0.8,en;q=0.6");
		connection.addRequestProperty("Cache-Control", "max-age=0");
		connection.addRequestProperty("Connection", "keep-alive");
		connection.addRequestProperty("Cookie", "pgv_pvi=48462848; ptui_loginuin=917401186; RK=rNufpBvUae; randomSeed=216853; __Q_w_s__QZN_TodoMsgCnt=1; __Q_w_s_hat_seed=1; __Q_w_s__appDataSeed=1; isVideo_DC=0; o_cookie=917401186; pgv_pvid=1301525092; qz_screen=1366x768; QZ_FE_WEBP_SUPPORT=1; cpu_performance_v8=10; pgv_info=ssid=s2614971125; p_skey=H8IvqFvT3KBsQyXiFPT8v-0ZIyvRF1RJXXRyQX1k*9E_; pt4_token=N1FKJFUxyFxTmlu4wK7kOA__; pt2gguin=o0917401186; uin=o0917401186; skey=@ISWcJfiBc; ptisp=ctc; ptcz=9fc1f26e6236f5a8d913da0b2fbce94cd1fca5ec5b54820f2dd6a01dbe7c8c22; qzspeedup=sdch; Loading=Yes");
		connection.addRequestProperty("Host", "user.qzone.qq.com");
		connection.addRequestProperty("If-Modified-Since", "Fri, 25 Jul 2014 06:24:26 GMT");
		connection.addRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36");

		access("utf-8",connection);
	}

	public static void access(String charset,HttpURLConnection connection)
	{
		BufferedReader br = null;
		InputStreamReader inputStreamReader = null;
		InputStream inputStream = null;
		try
		{
			connection.setDoInput(true);
			connection.setDoOutput(true);
			inputStream = connection.getInputStream();
			inputStreamReader = new InputStreamReader(inputStream, charset);
			br = new BufferedReader(inputStreamReader);

			StringBuffer sb = new StringBuffer();
			String tempString;
			while ((tempString = br.readLine()) != null)
			{
				sb.append(tempString);
			}

			System.out.println(sb.toString());
//			showResponseHead(connection);

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				br.close();
				inputStreamReader.close();
				inputStream.close();
			}
			catch (IOException e)
			{
				e.printStackTrace();
				System.out.println("close exception");
			}
		}
	}

	public static void showResponseHead(HttpURLConnection connection)
	{
		Map<String, List<String>> map = connection.getHeaderFields();
		Set<String> keys = map.keySet();
		for (String key : keys)
		{
			System.out.println(key + " : " + map.get(key));
		}
	}


}
