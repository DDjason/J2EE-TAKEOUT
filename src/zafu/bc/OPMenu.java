package zafu.bc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import zafu.info.*;;

public class OPMenu {
	public static double GetPric(String m_id)
	{
		double t= 0;
		String sql = "SELECT m_价格 FROM TAKEOUT.Menu where m_编号 = '"
				+ m_id
				+ "';";
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		try{
			while(rs.next()){
				t = rs.getDouble(1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return t;
	}
	public static void DeleteMenu(String m_id)
	{
		String sql = "DELETE FROM `TAKEOUT`.`Menu` WHERE m_编号 = '"
				+ m_id
				+ "';";
		if(!TOdbconnet.PsQuery(sql)){
			System.out.println("删除Menu信息失败！");
		};
		
	}
	public static ResultSet QueryMenu(String r_编号){
		
		String sql = "select * from TAKEOUT.Menu where r_编号 ="
				+ " '"+ r_编号 + "';";
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		return rs;
//		try{
//		//	DataInf.Menu temp =  new DataInf.Menu();
//				String m_编号;
//			 String m_菜名;
//			 double  m_价格;
//		 String m_信息;
//			String m_imgURL;
//			int  m_Have;
//			 String r_餐厅;
//			while(rs.next())
//			{
//					m_编号 = rs.getString("m_编号");
//					m_菜名 = rs.getString("m_菜名");
//					m_信息 = rs.getString("m_信息");
//					r_餐厅 = rs.getString("r_编号");
//					m_imgURL = rs.getString("m_imgURL");
//					m_价格 = rs.getDouble("m_价格");
//					m_Have = rs.getShort("m_Have");
//					System.out.println(r_餐厅 + " "+  m_菜名+" " + m_编号 + " " + m_Have + " " + m_价格 + " " + m_imgURL);
//			}
//			
//		}catch(Exception e){
//			System.out.println("读取菜单失败！");
//			e.printStackTrace();
//		}
//		
//		return rs;
	}
	public static void AddMenu(String m_编号,String m_菜名,String m_价格,
			String m_信息,String m_imgURL,String m_Have,String r_编号){
		String sql = "INSERT INTO `TAKEOUT`.`Menu`(`m_编号`,`m_菜名`,`m_价格`,`m_信息`,`m_imgURL`,`m_Have`,`r_编号`)VALUES("
				+ "'" +m_编号 +"',"
				+ "'" +m_菜名  +"',"
				+ "'" +m_价格 + "',"
				+ "'" +m_信息 +"',"
				+ "'" +m_imgURL+"',"
				+ "'" + m_Have+"',"
				+ "'" +r_编号 +  "');";
		
		if(!TOdbconnet.PsQuery(sql)){
			System.out.println("添加菜单信息失败！");
		};
//		try{
//		PreparedStatement ps =  TOdbconnet.GetPsQuery(sql);
//		int row = ps.executeUpdate();
//		if(row > 0){
//			System.out.println("成功添加了 " + row + " 条数据!");
//		}
//		}catch(Exception e){
//			System.out.println("添加菜单信息失败！");
//			System.out.println(sql);
//			e.printStackTrace();
//		}
		}

	
	public static Menu QueryMenuone(String m_编号){
		Menu sd = new Menu(2); 
		sd.SetMID(m_编号);
		String sql = "select * from TAKEOUT.Menu where m_编号 ="
				+ " '"+ m_编号 + "';";
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		try{
		//	DataInf.Menu temp =  new DataInf.Menu();
			 String m_菜名;
			 double  m_价格;
		 String m_信息;
			String m_imgURL;
			int  m_Have;
			 String r_餐厅;
			while(rs.next())
			{
					m_编号 = rs.getString("m_编号");
					m_菜名 = rs.getString("m_菜名");
					m_信息 = rs.getString("m_信息");
					r_餐厅 = rs.getString("r_编号");
					m_imgURL = rs.getString("m_imgURL");
					m_价格 = rs.getDouble("m_价格");
					m_Have = rs.getShort("m_Have");
					sd.SetMID(m_编号);
					sd.setCanting(r_餐厅);
					sd.SetMimgURL(m_imgURL);
					sd.SetHave(m_Have);
					sd.SetMInf(m_信息);
					sd.SetMName(m_菜名);
					sd.SetMPric(m_价格);
					
					System.out.println(r_餐厅 + " "+  m_菜名+" " + m_编号 + " " + m_Have + " " + m_价格 + " " + m_imgURL);
			}
			
		}catch(Exception e){
			System.out.println("读取菜单失败！");
			e.printStackTrace();
		}
		
		
		return sd;
	}
}
