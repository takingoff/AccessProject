package juno;

public class ConstructTest
{
	static public void main(String[] arsgs)
	{
		new HelloB();
		new HelloB();
	}
}

class HelloA
{
	public HelloA()
	{
		System.out.println("HelloA"); // 构造函数中执行部分
	}

	{
		System.out.println("I'm A class");
	} // 构造函数前首先执行部分
	static
	{
		System.out.println("static A");
	} // 静态执行部分
}

class HelloB extends HelloA
{
	public HelloB()
	{
		super();
		System.out.println("HelloB");
	}

	{
		System.out.println("I'm B class");
	}
	static
	{
		System.out.println("static B");
	}

}