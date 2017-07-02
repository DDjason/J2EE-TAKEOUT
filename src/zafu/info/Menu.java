package zafu.info;

public class Menu{
	private String m_编号;
	private String m_菜名;
	private double  m_价格;
	private String m_信息;
	private String m_imgURL;
	private int  m_Have;
	private String r_餐厅;

	public Menu(int a){};
	public void setCanting(String password){
		r_餐厅 = password;
	}
	public String GetCanting(){
		return r_餐厅;
	}
	public void SetMID(String ID){
		m_编号 = ID;
	}
	public String GetID(){
		return m_编号;
	}
	public void SetHave(int k){
		m_Have = k;
	}
	public int GetHave(){
		return m_Have;
	}
	
	public void SetMName(String ID){
		m_菜名 = ID;
	}
	public String GetMName(){
		return m_菜名;
	}
	public void SetMPric(double ID){
		m_价格 = ID;
	}
	public double GetMPric(){
		return m_价格;
	}
	public void SetMInf(String ID){
		m_信息 = ID;
	}
	public String GetInf(){
		return m_信息;
	}
	public void SetMimgURL(String ID){
		m_imgURL = ID;
	}
	public String GetimgURL(){
		return m_imgURL;
	}
}