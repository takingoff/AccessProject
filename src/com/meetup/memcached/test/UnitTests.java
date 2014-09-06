/**
 * Copyright (c) 2008 Greg Whalin All rights reserved.
 * 
 * This library is free software; you can redistribute it and/or modify it under the terms of the
 * BSD license
 * 
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
 * even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 * You should have received a copy of the BSD License along with this library.
 * 
 * @author Kevin Burton
 * @author greg whalin <greg@meetup.com>
 */
package com.meetup.memcached.test;

import com.meetup.memcached.*;
import java.util.*;
import java.io.Serializable;
import junit.framework.TestCase;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;

public class UnitTests extends TestCase
{
	
	// logger
	private static Logger log = Logger.getLogger(UnitTests.class.getName());
	{log.setLevel(Level.INFO);}
	public static MemcachedClient mc = null;
	
	public static void TestBoolean()
	{
		mc.set("foo", Boolean.TRUE);
		Boolean b = (Boolean) mc.get("foo");
		assert b.booleanValue();
		log.info("+ store/retrieve Boolean type Test passed");
	}
	
	public static void TestInteger()
	{
		mc.set("foo", new Integer(Integer.MAX_VALUE));
		Integer i = (Integer) mc.get("foo");
		assert i.intValue() == Integer.MAX_VALUE;
		log.info("+ store/retrieve Integer type Test passed");
	}
	
	public static void TestString()
	{
		String input = "Test of string encoding";
		mc.set("foo", input);
		String s = (String) mc.get("foo");
		assert s.equals(input);
		log.info("+ store/retrieve String type Test passed");
	}
	
	public static void TestChar()
	{
		mc.set("foo", new Character('z'));
		Character c = (Character) mc.get("foo");
		assert c.charValue() == 'z';
		log.info("+ store/retrieve Character type Test passed");
	}
	
	public static void TestByte()
	{
		mc.set("foo", new Byte((byte) 127));
		Byte b = (Byte) mc.get("foo");
		assert b.byteValue() == 127;
		log.info("+ store/retrieve Byte type Test passed");
	}
	
	public static void TestStringBUffer()
	{
		mc.set("foo", new StringBuffer("hello"));
		StringBuffer o = (StringBuffer) mc.get("foo");
		assert o.toString().equals("hello");
		log.info("+ store/retrieve StringBuffer type Test passed");
	}
	
	public static void TestShort()
	{
		mc.set("foo", new Short((short) 100));
		Short o = (Short) mc.get("foo");
		assert o.shortValue() == 100;
		log.info("+ store/retrieve Short type Test passed");
	}
	
	public static void TestLong()
	{
		mc.set("foo", new Long(Long.MAX_VALUE));
		Long o = (Long) mc.get("foo");
		assert o.longValue() == Long.MAX_VALUE;
		log.info("+ store/retrieve Long type Test passed");
	}
	
	public static void Testdouble()
	{
		mc.set("foo", new Double(1.1));
		Double o = (Double) mc.get("foo");
		assert o.doubleValue() == 1.1;
		log.info("+ store/retrieve Double type Test passed");
	}
	
	public static void TestFloat()
	{
		mc.set("foo", new Float(1.1f));
		Float o = (Float) mc.get("foo");
		assert o.floatValue() == 1.1f;
		log.info("+ store/retrieve Float type Test passed");
	}
	
	public static void TestTimeOut()
	{
		mc.set("foo", new Integer(100), new Date(System.currentTimeMillis()));
		try {
			Thread.sleep(1000);
		} catch (Exception ex) {}
		assert mc.get("foo") == null;
		log.info("+ store/retrieve w/ expiration Test passed");
	}
	
	public static void TestCounter()
	{
		long i = 0;
		mc.storeCounter("foo", i);
		mc.incr("foo"); // foo now == 1
		mc.incr("foo", (long) 5); // foo now == 6
		long j = mc.decr("foo", (long) 2); // foo now == 4
		assert j == 4;
		assert j == mc.getCounter("foo");
		log.info("+ incr/decr Test passed");
	}
	
	public static void TestDate()
	{
		Date d1 = new Date();
		mc.set("foo", d1);
		Date d2 = (Date) mc.get("foo");
		assert d1.equals(d2);
		log.info("+ store/retrieve Date type Test passed");
	}
	
	public static void TestExist()
	{
		assert !mc.keyExists("foobar123");
		mc.set("foobar123", new Integer(100000));
		assert mc.keyExists("foobar123");
		log.info("+ store/retrieve Test passed");
		
		assert !mc.keyExists("counterTest123");
		mc.storeCounter("counterTest123", 0);
		assert mc.keyExists("counterTest123");
		log.info("+ counter store Test passed");
	}
	
	@SuppressWarnings("unchecked")
	public static void testStates()
	{
		
		Map<Object,Object> stats = mc.statsItems();
		for(Object o: stats.keySet())
			System.out.println(o.toString()+"::"+stats.get(o));
		
		stats = mc.statsSlabs();
		for(Object o: stats.keySet())
			System.out.println(o.toString()+"::"+stats.get(o));
	}
	
	public static void TestNull()
	{
		assert !mc.set("foo", null);
		log.info("+ invalid data store [null] Test passed");
	}
	
	public static void TestType()
	{
		mc.set("foo bar", Boolean.TRUE);
		Boolean b = (Boolean) mc.get("foo bar");
		assert b.booleanValue();
		log.info("+ store/retrieve Boolean type Test passed");
	}
	
	public static void TestAddInCr()
	{
		mc.addOrIncr("foo"); // foo now == 0
		mc.incr("foo"); // foo now == 1
		mc.incr("foo", (long) 5); // foo now == 6
		
		mc.addOrIncr("foo"); // foo now 7
		
		long j = mc.decr("foo", (long) 3); // foo now == 4
		assert j == 4;
		assert j == mc.getCounter("foo");
	}
	
	public static void TestMulti()
	{
		int max = 100;
		String[] keys = new String[max];
		for (int i = 0; i < max; i++) {
			keys[i] = Integer.toString(i);
			mc.set(keys[i], "value" + i);
		}
		
		Map<String, Object> results = mc.getMulti(keys);
		for (int i = 0; i < max; i++) {
			assert results.get(keys[i]).equals("value" + i);
		}
		log.info("+ getMulti Test passed");
	}
	
	
	public static void TestObject()
	{
		TObject tc = new TObject("foo", "bar", new Integer(32));
		mc.set("foo", tc);
		assert tc.equals((TObject) mc.get("foo"));
		System.out.println(tc.getField1());
		log.info("+ store/retrieve serialized object Test passed");
	}
	
	public static void TestNokey()
	{
		
		String[] allKeys = {"key1", "key2", "key3", "key4", "key5", "key6", "key7"};
		String[] setKeys = {"key1", "key3", "key5", "key7"};
		
		for (String key : setKeys) {
			mc.set(key, key);
		}
		
		Map<String, Object> results = mc.getMulti(allKeys);
		
		assert allKeys.length == results.size();
		for (String key : setKeys) {
			String val = (String) results.get(key);
			assert key.equals(val);
		}
		
		log.info("+ getMulti w/ keys that don't exist Test passed");
	}
	
	public static void Test20( int max, int skip, int start ) {
		log.warn( String.format( "test 20 starting with start=%5d skip=%5d max=%7d", start, skip, max ) );
		int numEntries = max/skip+1;
		String[] keys = new String[ numEntries ];
		byte[][] vals = new byte[ numEntries ][];
		
		int size = start;
		for ( int i=0; i<numEntries; i++ ) {
			keys[i] = Integer.toString( size );
			vals[i] = new byte[size + 1];
			for ( int j=0; j<size + 1; j++ )
				vals[i][j] = (byte)j;
			
			mc.set( keys[i], vals[i] );
			size += skip;
		}
		
		Map<String,Object> results = mc.getMulti( keys );
		for ( int i=0; i<numEntries; i++ )
			assert Arrays.equals( (byte[])results.get( keys[i]), vals[i] );
		
		log.warn( String.format( "test 20 finished with start=%5d skip=%5d max=%7d", start, skip, max ) );
	}
	
	public static void TestAll(MemcachedClient mc)
	{
		TestExist();
		for (int t = 0; t < 2; t++) {
			mc.setCompressEnable((t & 1) == 1);
			
//			TestBoolean();
//			TestInteger();
//			TestString();
//			TestChar();
//			TestByte();
//			TestStringBUffer();
//			TestShort();
//			TestLong();
//			Testdouble();
//			TestFloat();
//			TestTimeOut();
//			TestCounter();
//			TestDate();
//			TestStates();
//			TestNull();
//			TestType();
//			TestObject();
//			TestNokey();
			
			for (int i = 0; i < 3; i++)
				TestMulti();
			
			Test20(8191, 1, 0);
			Test20(8192, 1, 0);
			Test20(8193, 1, 0);
			
			Test20(16384, 100, 0);
			Test20(17000, 128, 0);
			
			Test20(128 * 1024, 1023, 0);
			Test20(128 * 1024, 1023, 1);
			Test20(128 * 1024, 1024, 0);
			Test20(128 * 1024, 1024, 1);
			
			Test20(128 * 1024, 1023, 0);
			Test20(128 * 1024, 1023, 1);
			Test20(128 * 1024, 1024, 0);
			Test20(128 * 1024, 1024, 1);
			
			Test20(900 * 1024, 32 * 1024, 0);
			Test20(900 * 1024, 32 * 1024, 1);
		}
		
	}
	
	
	@Override
	protected void setUp() throws Exception
	{
		BasicConfigurator.configure();
		org.apache.log4j.Logger.getRootLogger().setLevel(Level.WARN);
		
		if (!UnitTests.class.desiredAssertionStatus()) {
			System.err.println("WARNING: assertions are disabled!");
			try {
				Thread.sleep(3000);
			} catch (InterruptedException e) {}
		}
		
		String[] serverlist = {
		//			"192.168.1.50:1620",
		//			"192.168.1.50:1621",
		//			"192.168.1.50:1622",
		//			"192.168.1.50:1623",
		//			"192.168.1.50:1624",
		//			"192.168.1.50:1625",
		//			"192.168.1.50:1626",
		//			"192.1a168.1.50:1628",
		"127.0.0.1:11211"};
		
		Integer[] weights = {1, 1, 1, 1, 10, 5, 1, 1, 1, 3};
		
		
		// initialize the pool for memcache servers
		SockIOPool pool = SockIOPool.getInstance("Test");
		pool.setServers(serverlist);
		pool.setWeights(weights);
		pool.setMaxConn(250);
		pool.setNagle(false);
		pool.setHashingAlg(SockIOPool.CONSISTENT_HASH);
		pool.initialize();
		
		mc = new MemcachedClient("Test");
	}

	
	/** 
	 * Class for Testing serializing of objects. 
	 * 
	 * @author $Author: $
	 * @version $Revision: $ $Date: $
	 */
	public static final class TObject implements Serializable
	{
		private static final long serialVersionUID = 1L;
		
		private String field1;
		
		private String field2;
		
		private Integer field3;
		
		public TObject(String field1, String field2, Integer field3) {
			this.field1 = field1;
			this.field2 = field2;
			this.field3 = field3;
		}
		
		public String getField1()
		{
			return this.field1;
		}
		
		public String getField2()
		{
			return this.field2;
		}
		
		public Integer getField3()
		{
			return this.field3;
		}
		
		public boolean equals(Object o)
		{
			if (this == o) return true;
			if (!(o instanceof TObject)) return false;
			
			TObject obj = (TObject) o;
			
			return ((this.field1 == obj.getField1() || (this.field1 != null && this.field1.equals(obj.getField1()))) && (this.field2 == obj.getField2() || (this.field2 != null && this.field2.equals(obj.getField2()))) && (this.field3 == obj.getField3() || (this.field3 != null && this.field3.equals(obj.getField3()))));
		}
	}
}
