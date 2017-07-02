package zafu.bc;

public class OPBook {

	public static void AddBook(String o_id,String m_id,String nub){
		String sql = "INSERT INTO `TAKEOUT`.`Book`(`o_编号`,`m_编号`,`b_数量`)VALUES('"
				+ o_id+ "','"
				+ m_id+ "','"
				+ nub + "');";
		double temp = 0;
		temp = OPMenu.GetPric(m_id);
		OPOrderlist.UpdatePric(o_id, temp);
		if(!TOdbconnet.PsQuery(sql)){
			System.out.println("添加Book信息失败！");
		};
	}
	
	public static void DelBook(String o_id,String m_id){
		String sql = "DELETE FROM `TAKEOUT`.`Book`WHERE (o_编号 = '"
				+ o_id+ "' AND m_编号 = '"
				+ m_id+ "');";
		
		if(!TOdbconnet.PsQuery(sql)){
			System.out.println("添加Book信息失败！");
		};
	}
}
