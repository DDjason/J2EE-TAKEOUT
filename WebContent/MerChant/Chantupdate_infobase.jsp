<%@ page language="java" import="java.sql.*" import="zafu.bc.TOdbconnet" import = "zafu.info.Restaurant" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String usename=request.getParameter("useid");
String Add=request.getParameter("useadd");
String Chargename=request.getParameter("usechant");
String Des=request.getParameter("usedes");
String Passw=request.getParameter("useidpass");
String Telee=request.getParameter("usetel");
String restname=request.getParameter("restname");
Restaurant rest = new Restaurant();
rest.setAdd(Add);
rest.setName(restname);
rest.setCharge(Chargename);
rest.setDesC(Des);
rest.setPass(Passw);
rest.setTel(Telee);
String sql2 = "UPDATE `TAKEOUT`.`Restaurant`SET `r_餐厅名` = '"
		+rest.GetName() + "',`r_Tel` = '"
		+ rest.GetTel()+ "',`r_地址` = '"
		+rest.GetAdd() + "',`r_负责人` = '"
		+ rest.GetCharge() + "',`r_描述` = '"
		+ rest.GetDesC() +"',`r_PASSWORD` = '"
		+ rest.GetPass()+ "' WHERE `r_编号` = '"+ usename+"';";

PreparedStatement ps = TOdbconnet.GetPsQuery(sql2);
try{
	ps.executeUpdate();
	System.out.println("修改信息成功！");
}catch(Exception e){
	System.out.println("修改失败！");
	e.printStackTrace();
}
%>