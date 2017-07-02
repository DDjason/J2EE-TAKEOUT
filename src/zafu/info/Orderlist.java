package zafu.info;

public class Orderlist{
	private int o_编号;
	private double o_总价;
	private boolean o_是否送餐;
	private String r_餐厅;
	
	public void setCanting(String password){
		r_餐厅 = password;
	}
	public String GetCanting(){
		return r_餐厅;
	}
	public void SetOrder(int k){
		o_编号 = k;
	}
	public int GetOrder(){
		return o_编号;
	}
	public void SetSumM(double k){
		o_总价 = k;
	}
	public double GetSumM(){
		return o_总价;
	}
	public void SetDri(boolean k){
		o_是否送餐 = k;
	}
	public boolean GetDri(){
		return o_是否送餐;
	}
	
}