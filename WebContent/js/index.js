window.onload=function(){
	var oDiv=document.getElementById('opic');
	var oImg=oDiv.getElementsByTagName('img')[0];
	var aA=oDiv.getElementsByTagName("a");
	for (var i=0;i<aA.length;i++){
		aA[i].index=i;
		aA[i].onmouseover=function(){
			oImg.src="images/pic"+this.index+".jpg";
			};	
		};
		var oNavDiv=document.getElementById("nav_main");
		var aNavA=oNavDiv.getElementsByTagName("a");
		var aNavUl=document.getElementById("nav_son").getElementsByTagName("ul");
		for (var i=0; i<aNavA.length;i++){
			aNavA[i].index=i;
			aNavA[i].onmouseover=function(){
				for (var i=0;i<aNavA.length;i++){
					aNavA[i].id="";
					aNavUl[i].style.display="none";};
					this.id="nav_current";
					aNavUl[this.index].style.display="block";}
		}
		};
		