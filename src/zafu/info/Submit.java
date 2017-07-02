package zafu.info;

public class Submit{
	private int o_编号;
	private String c_编号;
	private String s_编号;
	private boolean s_下单成功;
	private boolean s_已处理;
	public void setOrder(int password){
		o_编号 = password;
	}
	public int  GetOrder(){
		return o_编号;
	}
	public void setOrderOK(boolean password){
		s_下单成功 = password;
	}
	public boolean  GetOrderOK(){
		return s_下单成功;
	}
	public void setOperasOK(boolean password){
		s_已处理 = password;
	}
	public boolean  GetOperasOK(){
		return s_已处理;
	}
	public void setCus(String password){
		c_编号 = password;
	}
	public String GetCus(){
		return c_编号;
	}
	public void setStu(String password){
		s_编号 = password;
	}
	public String GetStu(){
		return s_编号;
	}
}