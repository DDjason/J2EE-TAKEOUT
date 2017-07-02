package zafu.bc;
import java.sql.*;

import zafu.info.Restaurant;
public class OPRest {
	
	public static Restaurant QueryRest(String id){
		Restaurant rest = new Restaurant();
		
		String sql = "SELECT * FROM TAKEOUT.Restaurant where r_编号 = '"
				+ id
				+ "'; ";
		ResultSet rs = null;
		rs = TOdbconnet.GetRsQuery(sql);
		String r_PASSWORD =null;
		String r_编号 = null;
		String r_餐厅名 = null;
		String r_TEL = null;
		String r_地址 = null;
		String r_负责人 = null;
		String r_描述 = null;
		String r_image = null;
		int r_评级 = 0;
		try{
			while(rs.next())
			{
				 r_PASSWORD = rs.getString("r_PASSWORD");
				 r_编号 = rs.getString("r_编号");
				 r_餐厅名 = rs.getString("r_餐厅名");
				 r_TEL = rs.getString("r_TEL");
				 r_地址 = rs.getString("r_地址");
				 r_负责人 = rs.getString("r_负责人");
				 r_描述 = rs.getString("r_描述");
				 r_image = rs.getString("r_image");
				 r_评级 = rs.getShort("r_评级");
				
				System.out.println(r_餐厅名 );
			}
		}catch(Exception e){
			System.out.println("读取商家失败！");
			e.printStackTrace();
		}
		rest.setAdd(r_地址);
		rest.setCharge(r_负责人);
		rest.setDesC(r_描述);
		rest.setName(r_餐厅名);
		rest.setPass(r_PASSWORD);
		rest.setTel(r_TEL);
		
		return rest;
	}
}
