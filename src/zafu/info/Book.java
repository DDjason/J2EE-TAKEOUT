package zafu.info;

public class Book{
	private int o_编号;
	private String m_编号;
	private int b_数量;
	public void setOrder(int password){
		o_编号 = password;
	}
	public int  GetOrder(){
		return o_编号;
	}
	public void setBcount(int password){
		b_数量 = password;
	}
	public int  GetBcount(){
		return b_数量;
	}
	public void setOmenu(String password){
		m_编号 = password;
	}
	public String GetOmenu(){
		return m_编号;
	}
}