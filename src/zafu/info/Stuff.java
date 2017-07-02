package zafu.info;

public class Stuff{
	private String s_编号;
	private String s_姓名;
	private String s_电话;
	private String s_备注;
	Stuff(){};
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