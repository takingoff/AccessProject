/**
 *	2014年8月4日 上午10:21:51
 *	TangLi
 *	PeroidCacheLoader.java
 */
package juby;

import java.util.Map;

/**
 * @author TangLi
 *
 */
public interface PeriodCacheLoader
{
	/**
	 * 返回装载周期毫秒数。
	 * @return
	 */
	public long getLoadPeroidMills();
	
	/**
	 * 重新装载数据。
	 * @param bufferdMap
	 */
	public void reload(Map<Object,Object> bufferdMap);
	
}
