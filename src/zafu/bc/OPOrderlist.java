package zafu.bc;

import java.sql.ResultSet;

public class OPOrderlist {
	public static void DOTHATcont(String cid,String oid){
		String sql = "INSERT INTO `TAKEOUT`.`Submit`(`c_编号`,`o_编号`,`s_编号`,`S_下单时间`,`S_预计送达`,`S_下单成功`)VALUES('"
				+ cid
				+ "','"
				+ oid
				+ "','s0001',null,null,null);";
		TOdbconnet.PsQuery(sql);
	}
	public static void UpdatePric(String oid,double t){
		double tt = 0;
		tt = OGetPrice(oid);
		tt+=t;
		String sql = "UPDATE `TAKEOUT`.`Orderlist`SET`o_总价` = '"
				+ tt
				+ "'WHERE `o_编号` = '"
				+ oid
				+ "';";
		TOdbconnet.PsQuery(sql);
	}
	public static double OGetPrice(String oid)
	{
		double t = 0;
		String sql = "SELECT `Orderlist`.`o_总价`FROM `TAKEOUT`.`Orderlist` Where o_编号 = '"
				+ oid
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
	public static void DeleteOrder(String o_编号){
		String sql = "UPDATE `TAKEOUT`.`Orderlist`SET `o_是否送餐` ='0' WHERE `o_编号` = '"
				+ o_编号
				+ "';";
		TOdbconnet.PsQuery(sql);
		
		}
	public static void CheckOrder(String o_编号){
	String sql = "UPDATE `TAKEOUT`.`Orderlist`SET `o_是否送餐` ='1' WHERE `o_编号` = '"
			+ o_编号
			+ "';";
	TOdbconnet.PsQuery(sql);
	
	}
	public static ResultSet QueryBooklist(String o_编号){
		String sql = "select * from TAKEOUT.Book where o_编号 ="
				+ " '"+ o_编号 + "';";
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		return rs;
//		try{
//		//	DataInf.Menu temp =  new DataInf.Menu();
//				String _o_编号;
//			 boolean o_是否送餐;
//			 double  o_总价;
//			 String r_餐厅;
//			while(rs.next())
//			{
//				_o_编号 = rs.getString("o_编号");
//					o_是否送餐 = rs.getBoolean("o_是否送餐");
//					r_餐厅 = rs.getString("r_编号");
//					o_总价 = rs.getDouble("o_总价");
//					System.out.println(r_餐厅 + " "+  o_总价+" " + o_是否送餐 + " " + _o_编号);
//			}
//			
//		}catch(Exception e){
//			System.out.println("读取菜单失败！");
//			e.printStackTrace();
//		}
	}
	public static ResultSet QueryOrderlist(String o_编号){
		String sql = "select * from TAKEOUT.Orderlist where o_编号 ="
				+ " '"+ o_编号 + "';";
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		return rs;
//		try{
//		//	DataInf.Menu temp =  new DataInf.Menu();
//				String _o_编号;
//			 boolean o_是否送餐;
//			 double  o_总价;
//			 String r_餐厅;
//			while(rs.next())
//			{
//				_o_编号 = rs.getString("o_编号");
//					o_是否送餐 = rs.getBoolean("o_是否送餐");
//					r_餐厅 = rs.getString("r_编号");
//					o_总价 = rs.getDouble("o_总价");
//					System.out.println(r_餐厅 + " "+  o_总价+" " + o_是否送餐 + " " + _o_编号);
//			}
//			
//		}catch(Exception e){
//			System.out.println("读取菜单失败！");
//			e.printStackTrace();
//		}
	}
	public static ResultSet QueryOrderlistByR(String r_编号){
		String sql = "select * from TAKEOUT.Orderlist where r_编号 ="
				+ " '"+ r_编号 + "';";
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		return rs;
//		try{
//		//	DataInf.Menu temp =  new DataInf.Menu();
//				String _o_编号;
//			 boolean o_是否送餐;
//			 double  o_总价;
//			 String r_餐厅;
//			while(rs.next())
//			{
//				_o_编号 = rs.getString("o_编号");
//					o_是否送餐 = rs.getBoolean("o_是否送餐");
//					r_餐厅 = rs.getString("r_编号");
//					o_总价 = rs.getDouble("o_总价");
//					System.out.println(r_餐厅 + " "+  o_总价+" " + o_是否送餐 + " " + _o_编号);
//			}
//			
//		}catch(Exception e){
//			System.out.println("读取菜单失败！");
//			e.printStackTrace();
//		}
	}

		
		public static void AddOrderlist(String r_编号){
			String sql = "INSERT INTO `TAKEOUT`.`Orderlist`(`o_编号`,`o_总价`,`o_是否送餐`,`r_编号`)VALUES(null,'0','1','"
					+ r_编号
					+ "');";
			
			
			if(!TOdbconnet.PsQuery(sql)){
				System.out.println("添加Orderlist信息失败！");
			};
			
		}
		public static int  GetMaxOrder(){
			String o = null ;
			int t = 0;
			String sql = "SELECT MAX(o_编号) FROM TAKEOUT.Orderlist;";
			ResultSet rs = null;
			rs = TOdbconnet.GetRsQuery(sql);
			try{
				while(rs.next())
				{
					t = rs.getInt(1);
				}
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			return t+1;
		}
}
