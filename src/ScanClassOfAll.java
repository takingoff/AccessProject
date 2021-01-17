import java.io.FileNotFoundException;


/**
 * @author LiTang
 * 扫描某个班上的 
 */
class ScanClassOfAll implements Runnable
{

	// git 提交测试。。
	// svn git 测试。。
	
	private String enterYear;

	private int collegeId;
	
	private int majorId;
	
	private int classId;
	
	private int peopleNum;
	
	private boolean isScanPsw;
	
	static private int judgeNum = 4;
	
	private int[] notFoundId ;		//连续四人没找到图片将直接退出 （判断为没有所在班级 或判定该学号以后没有学生了）
	
	private String imageDirPath;
	
	
	
	/**
	 * @param id 一旦发现有张图片没有找到那么 就掉用该函数检查一下是不是连续judgeNum 张图片没有找到了，如果是很有可能 不会再有图片了 ，
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
	 * @param enterYear 入学年
	 * @param collegeId 学院号码
	 * @param majorId	专业号码
	 * @param classId	 班级号码
	 * @param peopleNum  班级指定人数   
	 * @param imageDirPath  保存图片的路径
	 * @param isScanPsw  是否对其扫描密码 123456
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