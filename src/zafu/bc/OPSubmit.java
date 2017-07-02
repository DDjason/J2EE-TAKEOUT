package zafu.bc;

import java.sql.ResultSet;

public class OPSubmit {
	
	public static void QureySubmit(String _c_编号)
	{
		String sql = "select * from TAKEOUT.Submit where c_编号 = '"
				+ _c_编号
				+ "';";
		
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		
		try{
			String c_编号;
			int  o_编号;
			String s_编号;
			String S_下单时间;
			String S_预计送达;
			boolean S_下单成功;
			while(rs.next()){
				c_编号 = rs.getString("c_编号");
				o_编号 = rs.getShort("o_编号");
				s_编号 = rs.getString("s_编号");
				S_下单时间 = rs.getString("S_下单时间");
				S_下单成功 = rs.getBoolean("S_下单成功");
			}
		}catch(Exception e){
			System.out.println("读取提交信息失败");
			e.printStackTrace();
		}
	}
	
	public static void AddSubmit(String c_编号,String o_编号,String s_编号,String S_下单时间,String S_预计送达,String S_下单成功){
		String sql = "INSERT INTO `TAKEOUT`.`Submit`(`c_编号`,`o_编号`,`s_编号`,`S_下单时间`,`S_预计送达`,`S_下单成功`)VALUES("
				+ "'" + c_编号 +"',"
				+ "'" + o_编号 +"',"
				+ "'" + s_编号 +"',"
				+ "'" + S_下单时间 +"',"
				+ "'" + S_预计送达 +"',"
				+ "'" + S_下单成功 +"');";
		
		
		if(!TOdbconnet.PsQuery(sql)){
			System.out.println("添加Submit信息失败！");
		};
	}

}
