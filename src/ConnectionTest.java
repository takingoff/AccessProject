public class ConnectionTest
{
	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		
		// �꼶�� 201X
		for(int j = 3 ;j <= 3; j++)
		{
			//ѧԺ�� 
			for(int c = 1;c < 15; c++)
			{
				//רҵ��
				for(int k = 1;k <= 15 ;k ++)
				{
					//�༶��
					for(int i = 1;i <=4; i ++)
					{
						
						Thread thread = new Thread(new ScanClassOfAll("201"+j,8/*ѧԺ��*/,k,i,45/*�༶�趨����*/,"C:/Users/TangLi/Desktop/img",true));
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
