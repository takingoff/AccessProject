package julia;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import junit.framework.TestCase;

/**
 * @author TangLi
 * 2014年8月4日下午3:36:57
 */
public class Test extends TestCase
{

	public void TtestMap()
	{
		Map<String, String> map = new HashMap<String, String>();
		map.put("1", "value1");
		map.put("2", "value2");
		map.put("3", "value3");

		// 第一种：普遍使用，二次取�?
		System.out.println("通过Map.keySet遍历key和value");
		for (String key : map.keySet())
		{
			System.out.println("key= " + key + " and value= " + map.get(key));
		}

		// 第二�?
		System.out.println("通过Map.entrySet使用iterator遍历key和value");
		Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
		while (it.hasNext())
		{
			Map.Entry<String, String> entry = it.next();
			System.out.println("key= " + entry.getKey() + " and value= " + entry.getValue());
		}

		// 第三种：推荐，尤其是容量大时
		System.out.println("通过Map.entrySet遍历key和value");
		for (Map.Entry<String, String> entry : map.entrySet())
		{
			System.out.println("key= " + entry.getKey() + " and value= " + entry.getValue());
		}

		// 第四�?
		System.out.println("通过Map.values()遍历�?��的value，但不能遍历key");
		for (String v : map.values())
		{
			System.out.println("value= " + v);
		}
	}

	public void TtestOverride()
	{

		People p1 = new People();
		System.out.println(p1.getName());// 运行结果为people

		Student s1 = new Student();
		System.out.println(s1.getName());// 运行结果为student

		People pp1 = new Student();
		System.out.println(pp1.getName());// 运行结果为student

		// System.out.println("----------------");
		//
		// People p = new People();
		// p.print();
		//
		// Student s = new Student();
		// s.print();
		//
		// People pp = new Student();
		// pp.print();

	}

	public void Ttestfor()
	{
		List<Integer> list = new ArrayList<Integer>();
		int runTime = 1000;// 执行次数
		for (int i = 0; i < 1000 * 1000; i++)
		{
			list.add(i);
		}
		int size = list.size();

		// 基本的for
		long currTime = System.currentTimeMillis();// �?��分析前的系统时间
		for (int j = 0; j < runTime; j++)
		{
			for (int i = 0; i < size; i++)
			{
				list.get(i);
			}
		}

		// foreach
		long time1 = System.currentTimeMillis();
		for (int j = 0; j < runTime; j++)
		{
			for (int i = 0; i < list.size(); i++)
			{
				list.get(i);
			}
		}

		// while
		long time2 = System.currentTimeMillis();
		for (int j = 0; j < runTime; j++)
		{
			int i = 0;
			while (i < size)
			{
				list.get(i++);
			}
		}

		long time3 = System.currentTimeMillis();
		for (int j = 0; j < runTime; j++)
		{
			for (@SuppressWarnings("unused") Integer integer : list)
			{
			}
		}

		long time4 = System.currentTimeMillis();
		for (int j = 0; j < runTime; j++)
		{// 迭代
			Iterator<Integer> iter = list.iterator();
			while (iter.hasNext())
			{
				iter.next();
			}
		}

		long time5 = System.currentTimeMillis();

		long time = time1 - currTime;
		System.out.print("use for:" + time);
		time = time2 - time1;
		System.out.print("\tuse for2:" + time);
		time = time3 - time2;
		System.out.print("\tuse while:" + time);
		time = time4 - time3;
		System.out.print("\tuse foreach:" + time);
		time = time5 - time4;
		System.out.print("\tuse iterator:" + time);
		System.out.println();

		// use for:9118 use foreach:36779 use while:8905 use for2:12734 use
		// iterator:21657

		// use for:8976 use foreach:36689 use while:8755 use for2:18536 use
		// iterator:21153

		// use for:8895 use foreach:36868 use while:8907 use for2:18613 use
		// iterator:21025

		// use for:8988 use for2:18043 use while:8707 use foreach:37505 use
		// iterator:21270
	}


	public void testBigDecimal()
	{
		
		BigDecimal b = new BigDecimal(0);
		b.add(new BigDecimal(2));
		System.out.println(b);
		
		System.out.println(b.add(new BigDecimal(2)));
		
		b = b.add(new BigDecimal(2));
		System.out.println(b);
	}

	

}

class People
{
	protected String name = "people";

	public String getName()
	{
		return name;
	}

	public void print()
	{
		System.out.println(name);
	}

}

class Student extends People
{

	protected String name = "student";

}
