package zafu.bc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class OTLoad {
	
	
	
	
//	private String c_编号, c_PASSWORD,c_姓名,c_地址,c_电话,c_备注;
//	
//	
//	public void SetRegistLoad(String _c_编号,  String _c_PASSWORD,String _c_姓名,
//			String _c_地址,String _c_电话,String _c_备注){
//		c_编号 = _c_编号; 
//		c_PASSWORD = _c_PASSWORD;
//		c_姓名 = _c_姓名;c_地址 = _c_地址;c_电话 = _c_电话;c_备注 = _c_备注 ;
//	}
//	public void SetLoad(String _c_编号,  String _c_PASSWORD){
//		c_编号 = _c_编号; 
//		c_PASSWORD = _c_PASSWORD;
//	}
	public static int  SingIn(String _c_编号,  String _c_PASSWORD){
		String sql = "SELECT `Customer`.`c_PASSWORD` FROM `TAKEOUT`.`Customer` WHERE `Customer`.`c_编号` = '"+ _c_编号 + "';";

		ResultSet rs = null;
		int temp = 0;
		rs = TOdbconnet.GetRsQuery(sql);
		try {
			
			while( rs.next()){
				temp++;
			String Password = rs.getString(1);
			System.out.println(Password);
			System.out.println(_c_PASSWORD);
			if(_c_PASSWORD.equals(Password)){
				System.out.println("登录成功！");
				TOdbconnet.closers(rs);
				//return true;
				return 1;
				}
		}
			if(temp == 0){
				System.out.println("登录失败----无此用户");
				System.out.println(sql);
				return -2;
			}
		}catch(Exception e){
			System.out.println("登录失败");
			
			e.printStackTrace();
			return -1;
		}
		
		return -1;
	}
	public static boolean Regist(String _c_编号,  String _c_PASSWORD,String _c_姓名,
			String _c_地址,String _c_电话,String _c_备注){
		String sql = "INSERT INTO `TAKEOUT`.`Customer`("
				+ "`c_编号`,`c_PASSWORD`,`c_姓名`,`c_地址`,`c_电话`,`c_备注`)VALUES( "
				+ "'" + _c_编号 +"', "
				+ "'" + _c_PASSWORD +"', "
				+ "'" + _c_姓名 +"', "
				+ "'" + _c_地址 + "', "
				+ "'" + _c_电话 +"', "
				+ "'" + _c_备注 +"');";
		try{
		PreparedStatement ps =  TOdbconnet.GetPsQuery(sql);
		int row = ps.executeUpdate();
		if(row > 0){
			System.out.println("成功添加了 " + row + " 条数据!");
			return true;
		}
		}catch(Exception e){
			
			System.out.println("添加顾客信息失败！");
			System.out.println(sql);
			e.printStackTrace();
		}
		return false;
	}
	public static boolean RSingIn(String _r_编号,  String _r_PASSWORD){
		String sql = "SELECT `Restaurant`.`r_PASSWORD` FROM `TAKEOUT`.`Restaurant` WHERE `Restaurant`.`r_编号` = '"+ _r_编号 + "';";
		
		
		
		ResultSet rs = null;
		
		rs = TOdbconnet.GetRsQuery(sql);
		try {
			while( rs.next()){
			String Password = rs.getString(1);
			System.out.println(Password);
			System.out.println(_r_PASSWORD);
			if(_r_PASSWORD.equals(Password)){
				System.out.println("登录成功！");
				TOdbconnet.closers(rs);
				return true;
				}
		}
		}catch(Exception e){
			System.out.println(sql);
			System.out.println("登录失败");
			e.printStackTrace();
		}
		
		return false;
	}
	public static boolean RRegist(String r_编号,String r_餐厅名,String r_Tel,String r_地址,String
			r_负责,String r_描述,String r_评级,String r_PASSWORD){
		String sql = "INSERT INTO `TAKEOUT`.`Restaurant`"
				+ "(`r_编号`,`r_餐厅名`,`r_Tel`,`r_地址`,"
				+ "`r_负责人`,`r_描述`,`r_评级`,`r_PASSWORD`)VALUES("
				+ "'" + r_编号 + "',"
				+ "'" + r_餐厅名+" }>',"
				+ "'" + r_Tel  +"',"
				+ "'" + r_地址 +"',"
				+ "'" + r_负责 +"',"
				+ "'" + r_描述 +"',"
				+ "'" + r_评级 +"',"
				+ "'" + r_PASSWORD + "');";
		System.out.println(sql);
		try{
		PreparedStatement ps =  TOdbconnet.GetPsQuery(sql);
		int row = ps.executeUpdate();
		if(row > 0){
			System.out.println("成功添加了 " + row + " 条数据!");
			return true;
		}
		}catch(Exception e){
			System.out.println(sql);
			System.out.println("添加餐厅信息失败！");
			e.printStackTrace();
		}
		return false;
	}
	
}
