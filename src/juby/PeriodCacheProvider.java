/**
 *	2014��8��4�� ����10:19:09
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
	 * ��������ݡ�
	 */
	volatile Map<Object, Object> bufferMap;

	/**
	 * �ϴμ��ص�ʱ�䡣
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
