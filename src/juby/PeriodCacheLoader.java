/**
 *	2014��8��4�� ����10:21:51
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
	 * ����װ�����ں�������
	 * @return
	 */
	public long getLoadPeroidMills();
	
	/**
	 * ����װ�����ݡ�
	 * @param bufferdMap
	 */
	public void reload(Map<Object,Object> bufferdMap);
	
}
