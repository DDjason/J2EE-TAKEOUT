package zafu.info;

public class Customer{
	private String s_编号;
	private String s_姓名;
	private String s_电话;
	private String s_备注;
	private String c_PASSWORD;
	private String c_地址;
	public void setPass(String password){
		c_PASSWORD = password;
	}
	public String GetPass(){
		return c_PASSWORD;
	}
	public void setAdss(String Adss){
		c_地址 = Adss;
	}
	public String GetAdss(){
		return c_地址;
	}
	public void SetID(String ID){
		s_编号 = ID;
	}
	public void SetName(String Name){
		s_姓名 = Name;
	}
	public void SetTel(String ID){
		s_电话 = ID;
	}
	public void SetInf(String ID){
		s_备注 = ID;
	}
	
	public String GetID(){
		return s_编号;
	}
	public String GetName(){
		return s_姓名;
	}
	public String GetTel(){
		return s_电话;
	}
	public String GetInf(){
		return s_备注;
	}
	
}