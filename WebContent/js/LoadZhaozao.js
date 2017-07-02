function xfun(){
	 var rs = document.getElementsByName("xuancai");
	 alert(rs.length);
	 for( var i = 0; i < rs.length;  i++)
		{			
		if(rs[i].checked)
			{
				//s[index ++] = str[i].value;
				alert(rs[i].value);
				var mid = rs[i].value;
				loadXMLDoc2( "Book_base.jsp?oid=1000001" +
						"&mid=" + mid + "&nub=1"+"&timestamp=" + new Date().getTime());
			}
		}
	 location.href = "subinof.jsp?oid=1000001";
}
window.onload=function() 
{ 
 var zhezhao=document.getElementById("zhezhao"); 
 var login=document.getElementById("login"); 
 
 bt.onclick=function() 
 { 
  zhezhao.style.display="block"; 
  login.style.display="block"; 
 } 
 btclose.onclick=function() 
 { 
  zhezhao.style.display="none"; 
  login.style.display="none";  
 }
 registxz.onclick=function()
 {
	 zhezhao.style.display="block"; 
	  login.style.display="none";
	  rejistjsp.style.display="block";
 }
} 