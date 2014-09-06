/**
 *	2014年8月4日 上午10:19:09
 *	TangLi
 *	PeroidCacheProvider.java
 */
package juby;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/**
 * @author TangLi
 * 
 */
public class PeriodCacheProvider
{

	/**
	 * 缓存的数据。
	 */
	volatile Map<Object, Object> bufferMap;

	/**
	 * 上次加载的时间。
	 */
	volatile long lastLoadTime = 0;

	PeriodCacheLoader loader;

	public synchronized Object get(Object key)
	{
		long timePassed = System.currentTimeMillis() - lastLoadTime;
		if (timePassed > loader.getLoadPeroidMills())
		{
			Map<Object, Object> newBufferMap = createMap();
			loader.reload(newBufferMap);
			this.bufferMap = newBufferMap;
			lastLoadTime = System.currentTimeMillis();
		}
		return bufferMap.get(key);
	}

	public Map<Object, Object> createMap()
	{

		return Collections.synchronizedMap(new HashMap<Object, Object>());
	}

}
