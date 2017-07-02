package zafu.bc;

import java.sql.ResultSet;

public class OPStuff {
	public static void QueryStaff(String s_编号){

		
		String sql = "SELECT * FROM TAKEOUT.Staff where s_编号 = "
				+ "'" + s_编号 + "';";
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		try{
		//	DataInf.Menu temp =  new DataInf.Menu();
				String _s_编号;
			 String s_姓名;
			 
		 String s_电话;
			String s_备注;
			String mysql = "SELECT count(*) FROM TAKEOUT.Staff where s_编号 = "
					+ "'" + s_编号 + "';";
			int row = TOdbconnet.GetQueryCount(mysql);
			while(rs.next())
			{
				_s_编号 = rs.getString("s_编号");
				s_姓名 = rs.getString("s_姓名");
				s_电话 = rs.getString("s_电话");
				s_备注 = rs.getString("s_备注");
					System.out.println(_s_编号 + " "+  s_姓名+" " + s_电话 + " " + s_备注 );
			}
			
		}catch(Exception e){
			System.out.println("读取员工失败！");
			e.printStackTrace();
		}finally{
			try{
			rs.close();
			}catch(Exception e){
				System.out.println("关闭rs失败");
			}
		}
	}

	public static void AddStaff(String s_编号,String s_姓名,String s_电话,String s_备注)
	{
		String sql = "INSERT INTO `TAKEOUT`.`Staff`(`s_编号`,`s_姓名`,`s_电话`,`s_备注`)VALUES("
				+ "'"+ s_编号+"',"
				+ "'" +s_姓名+"',"
				+ "'"+ s_电话+"',"
				+ "'" +s_备注+"');";
		
		if(!TOdbconnet.PsQuery(sql)){
			System.out.println("添加Staff信息失败！");
		};
	}
}
