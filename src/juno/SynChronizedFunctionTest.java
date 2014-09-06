/**
 * 2014年8月1日 下午3:11:29
 * 
 * TangLi
 */
package juno;

/**
 * @author TangLi
 *
 */
public class SynChronizedFunctionTest
{
	public static void main(String[] args)
	{
		SynChronizedFunctionTest  test = new SynChronizedFunctionTest();
		
		Thread t1 = new Thread(new RunSynFunc(test));
		t1.start();
		
		Thread t2 = new Thread(new RunSynFunc(test));
		t2.start();
		
	}
	
	public int index = 0;
	public int executeCount = 0;
	public Object object = new Object();
	/**
	 * 如果函数被标记为synchronized，所属对象在多个线程中被调用该函数时，会依次排队执行.
	 */
	synchronized void synFunc()
	{
		int temp = ++executeCount ;
		System.out.println("begin synchronized function ! executeCount:"+ temp);
		try
		{
			if(index <=0 )
			{
				System.out.println("because index is less than 0 so add one then invoke wait to relinquish synchronized code");
				index ++;
				this.wait();
				Thread.sleep(3000);
			}
			else
			{
				System.out.println("because index is greater than 0 so continue execute and notify");
				this.notify();
				Thread.sleep(10000);
			}
		}
		catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		System.out.println("end synchronized function ! executeCount:"+ temp);
	}
	
	
	void synBlockFunc()
	{
		int temp = ++executeCount ;
		System.out.println("begin synchronized function ! executeCount:"+ temp);
		try
		{
			synchronized (object)
//			synchronized (new Object())
			{
				System.out.println("execute synchronized block ! executeCount:"+ temp);
				Thread.sleep(5000);
			}
		}
		catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		System.out.println("end synchronized function ! executeCount:"+ temp);
		
	}
	
	
}


class RunSynFunc implements Runnable
{
	SynChronizedFunctionTest test;
	public RunSynFunc(SynChronizedFunctionTest test)
	{
		this.test = test;
	}
	@Override
	public void run()
	{
		test.synBlockFunc();
		
//		test.synFunc();
//		begin synchronized function ! executeCount:1
//		because index is less than 0 so add one then invoke wait to relinquish synchronized code
//		begin synchronized function ! executeCount:2
//		because index is greater than 0 so continue execute and notify
//		end synchronized function ! executeCount:2
//		end synchronized function ! executeCount:1
	}
	
}