public class ConnectionTest
{
	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		
		// 年级号 201X
		for(int j = 3 ;j <= 3; j++)
		{
			//学院号 
			for(int c = 1;c < 15; c++)
			{
				//专业号
				for(int k = 1;k <= 15 ;k ++)
				{
					//班级号
					for(int i = 1;i <=4; i ++)
					{
						
						Thread thread = new Thread(new ScanClassOfAll("201"+j,8/*学院号*/,k,i,45/*班级设定人数*/,"C:/Users/TangLi/Desktop/img",true));
						thread.start();
					}
				}
				
			}
			
		}
		
		// if(AccessFunc.accessCdut("201005070204","super_tangli",false,10))
		// {
			// System.out.println("succcess");
		// }
		
	}
	
}
