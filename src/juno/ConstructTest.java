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
		System.out.println("HelloA"); // ���캯����ִ�в���
	}

	{
		System.out.println("I'm A class");
	} // ���캯��ǰ����ִ�в���
	static
	{
		System.out.println("static A");
	} // ��ִ̬�в���
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