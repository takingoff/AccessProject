import java.io.FileNotFoundException;


/**
 * @author LiTang
 * ɨ��ĳ�����ϵ� 
 */
class ScanClassOfAll implements Runnable
{

	// git �ύ���ԡ���
	// svn git ���ԡ���
	
	private String enterYear;

	private int collegeId;
	
	private int majorId;
	
	private int classId;
	
	private int peopleNum;
	
	private boolean isScanPsw;
	
	static private int judgeNum = 4;
	
	private int[] notFoundId ;		//��������û�ҵ�ͼƬ��ֱ���˳� ���ж�Ϊû�����ڰ༶ ���ж���ѧ���Ժ�û��ѧ���ˣ�
	
	private String imageDirPath;
	
	
	
	/**
	 * @param id һ����������ͼƬû���ҵ���ô �͵��øú������һ���ǲ�������judgeNum ��ͼƬû���ҵ��ˣ�����Ǻ��п��� ��������ͼƬ�� ��
	 * @return  
	 */
	private boolean judgeClassExist(int id)
	{
		for(int i=0 ;i < judgeNum;i ++)
		{
			if(notFoundId[i] == (id-1))
			{
				if(i== (judgeNum -2))
					return false;
				else
				{
					notFoundId[i+1] = id;
					return true;
				}
			}
		}
		notFoundId[0] = id;
		return true;
	}
	
	/**
	 * @param enterYear ��ѧ��
	 * @param collegeId ѧԺ����
	 * @param majorId	רҵ����
	 * @param classId	 �༶����
	 * @param peopleNum  �༶ָ������   
	 * @param imageDirPath  ����ͼƬ��·��
	 * @param isScanPsw  �Ƿ����ɨ������ 123456
	 */
	public ScanClassOfAll(String enterYear,int collegeId,int majorId,int classId,int peopleNum,String imageDirPath,boolean isScanPsw)
	{
		this.enterYear = enterYear;
		this.collegeId = collegeId;
		this.majorId = majorId;
		this.classId = classId;
		this.peopleNum = peopleNum;
		this.isScanPsw= isScanPsw;
		this.imageDirPath = imageDirPath;
		this.notFoundId =new  int[judgeNum];
		for(int i =0 ;i <4 ;i ++)
			notFoundId[i] = 0;
	}

	@Override
	public void run()
	{
		String id;
		String  prefix;
		
		if(collegeId <10)
			prefix = enterYear + "0" + collegeId;
		else
			prefix  = enterYear + collegeId;
		
		if(majorId <10)
			prefix += "0" + majorId;
		else
			prefix += majorId;
		
		if(classId<10)
			prefix += "0" + classId;
		else
			prefix += classId;
		
		for (int y = 1; y <= peopleNum; y++)
		{

			id = prefix + (y < 10 ? "0" + y : y);
			
			try
			{
				
				if(isScanPsw)
				{
					if (AccessFunc.accessCdut(id, "123456", false,10))
					{
						System.out.println(id + " find");
						AccessFunc.accessFile("http://202.115.139.10/zxs_zp/" + enterYear,id+".jpg",imageDirPath,false);
					}
				}
				else
					AccessFunc.accessFile("http://202.115.139.10/zxs_zp/" + enterYear,id+".jpg",imageDirPath,false);
				
				try
				{
					Thread.sleep(1000);
				}
				catch (InterruptedException e)
				{
					System.out.println("thread sleep exception----------------------------------------------");
					e.printStackTrace();
				}
				
			}
			catch(FileNotFoundException e)
			{
				
				if(judgeClassExist(y))
					continue;
				else
					return;
			}
			

		}
		
	}

	
	

}