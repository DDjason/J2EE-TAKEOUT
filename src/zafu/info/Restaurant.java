package zafu.info;

public class Restaurant {
	String r_编号;
	String r_餐厅名;
	String r_TEL;
	String r_地址;
	String r_负责人;
	String r_描述;
	String r_image;
	int r_评级;
	String r_PASSWORD;
	
	public void setPass(String password){
		r_PASSWORD = password;
	}
	public String GetPass(){
		return r_PASSWORD;
	}
	
	public void setId(String password){
		r_编号 = password;
	}
	public String GetId(){
		return r_编号;
	}
	public void setName(String password){
		r_餐厅名 = password;
	}
	public String GetName(){
		return r_餐厅名;
	}
	public void setTel(String password){
		r_TEL = password;
	}
	public String GetTel(){
		return r_TEL;
	}
	public void setAdd(String password){
		r_地址 = password;
	}
	public String GetAdd(){
		return r_地址;
	}
	public void setCharge(String password){
		r_负责人 = password;
	}
	public String GetCharge(){
		return r_负责人;
	}
	public void setImage(String password){
		r_image = password;
	}
	public String GetImage(){
		return r_image;
	}
	public void setDesC(String password){
		r_描述 = password;
	}
	public String GetDesC(){
		return r_描述;
	}
	public void setLevel(int password){
		r_评级 = password;
	}
	public int  GetLevel(){
		return r_评级;
	}
}
