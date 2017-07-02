<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>外卖主页</title>

<link rel="stylesheet" type="text/css" href="css/waimai.css" />

<script src="js/index.js" type="text/javascript"></script>


<script  type="text/javascript">

function load1(){
	
	window.location="Load.jsp";

}
function load2(){
	
	window.location="regist.jsp";

}
</script>
</head>

<body  >

<%
String cuseid = request.getParameter("useid");
%>

<div id="container">
    <div id="header">
    	<div id="logo"><img src="images/logo.gif" width="181" height="45"/></div>

    	<div id="logo"><img  width="81" height="45"/>
    		<form id = "load" name = "load">
    			<input type = "button" value = "登录" onclick = "load1()"/>
    		</form>
    	</div>
    	<div id="logo"><img  width="81" height="45"/>
    		<form id = "regist" name = "regist">
    			<input type = "button" value = "注册"  onclick = "load2()"/>
    		</form>
    	</div>
        <div id="search">
        	<form id="form1" name="form1" method="post" action="">
            搜索美食
            <input type="text" name="textfield" id="textfield"/>
            <input type="submit" name="button" id="button" value="查询" />
            </form>
        </div>    
    </div>
    <div id="nav">
   		<div id="nav_1"></div>
    	<div id="nav_2"></div>
   		<div id="nav_main">
            <ul>
                <li><a href="Canting/RestInfo.jsp?useid=<%=cuseid %>"><span>首页</span></a></li>
                <li><a href="#" id="nav_current"><span>招牌美食</span></a></li>
                <li><a href="Canting/RestInfo.jsp?useid=<%=cuseid %>"><span>美食展厅</span></a></li>
                <li><a href="#"><span>限时促销</span></a></li>
                <li><a href="#"><span>网上下单</span></a></li>
                <li><a href="#"><span>我的订单</span></a></li>
		<li><a href="#"><span>我的账户</span></a></li>
                <li><a href="#"><span>联系我们</span></a></li>
            </ul>
        </div>
        <div id="nav_son">
        	
            <ul style="display:none;">
            <li><a href="#">热门商家</a></li>
            <li><a href="#">食品分类</a></li>
            <li><a href="#">食品资讯</a></li>
            <li><a href="#">通知公告</a></li>
            </ul>
             <ul>

    	
       
        </ul>
         <ul style="display:none;padding-left:101px">
       
        </ul>
         <ul style="display:none;padding-left:212px">
      
        </ul>
         <ul style="display:none;padding-left:323px">
	<li><a href="#">          </a></li>
        <li><a href="#">修改个人信息</a></li>
        <li><a href="#">修改收货地址</a></li>
        <li><a href="#">订单详情</a></li>
    	
        </ul>
         <ul style="display:none;padding-left:434px">
	<li><a href="#">          </a></li>
	<li><a href="#">订单详情</a></li>
	 <li><a href="#">          </a></li>
	    
        <li><a href="#">          </a></li>
     
	
        </ul>


         <ul style="display:none;padding-left:545px">
	<li><a href="#">          </a></li>
	
        <li><a href="#">修改个人信息</a></li>
        <li><a href="#">修改收货地址</a></li>
 	<li><a href="#">          </a></li>
       
    
        </ul>
         <ul style="display:none;padding-left:545px">
	 <li><a href="#">          </a></li>
	 <li><a href="#">          </a></li>
        <li><a href="#">联系客服</a></li>
        <li><a href="#">联系店家</a></li>
        
        </ul>
        </div>
    </div>    
    <div id="content">
      <div id="main">
      		<div id="main_top">
            	<div id="pics"> 
                	<div id="opic"><img src="images/pic0.jpg" />
                		<div>
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                </div></div>
                <div id="login"><span><a href="#"
                ><img src="images/1.jpg"  /></a>
                </div>
             </div>
            	<div id="hot_news">
           <div id="news_top">
            	<h1>本店将推出全新系列套餐</p>
           	</div>
            <div id="news_list">
            	<ul>
                	<li><span>6-1</span><a href="#">会员抢先体验</a></li>
                    <li><span>6-1</span><a href="#">全新的味觉体验</a></li>
                    <li><span>6-1</span><a href="#">低廉的价格</a></li>
                    <li><span>6-1</span><a href="#">预约享8折优惠</a></li>
                    <li><span>6-1</span><a href="#">限量发售</a></li>
                    <li><span>6-1</span><a href="#">6月1日12时准时发布</a></li>
            	</ul>
                </div>
            </div>
           
</div>
            <div id="main_pics">
            		<h2><span></span></h2>
                    <ul>
                    	
                        <li><a href="#"><img src="images/2.jpg" alt="产品名称" width="107" height="87" />美食1</a></li>
                        <li><a href="#"><img src="images/3.jpg" alt="产品名称" width="107" height="87" />美食2</a></li>
                        <li><a href="#"><img src="images/4.jpg" alt="产品名称" width="107" height="87" />美食3</a></li>
                        <li><a href="#"><img src="images/5.jpg" alt="产品名称" width="107" height="87" />美食4</a></li>
                        <li><a href="#"><img src="images/6.jpg" alt="产品名称" width="107" height="87" />美食5</a></li>
                        <li><a href="#"><img src="images/7.jpg" alt="产品名称" width="107" height="87" />美食6</a></li>
                        <li><a href="#"><img src="images/8.jpg" alt="产品名称" width="107" height="87" />美食7</a></li>
                        <li><a href="#"><img src="images/9.jpg" alt="产品名称" width="107" height="87" />美食8</a></li>
                        <li><a href="#"><img src="images/10.jpg" alt="产品名称" width="107" height="87" />美食9</a></li>
                        <li><a href="#"><img src="images/11.jpg" alt="产品名称" width="107" height="87" />美食10</a></li>
                      </ul>
            
            </div>
            <div id="main_box">
            	<div class="box">
                	<h2><a class="more" href="#">更多...</a><span>美食介绍</span></h2>
                    <div class="box_con">
                    	<dl>
                        	<dt><a href="#"><img src="images/12.jpg" alt="安徽：八宝肉圆 
                              " width="91" height="70" /></a></dt>
                            <dd><a href="#"><strong>安徽：八宝肉圆 
                                           </strong>
                                </a>徽菜中的“八宝肉圆”是以鸡肉出鲜、火腿佐味、冬菇增香而著称，其佐料白木耳还有很高                                    营养价值 </dd>
                        </dl>
                        <ul>
                        	<li><a href="#">银耳能提高肝脏解毒能力，起保肝作用</a></li>
                            <li><a href="#">银耳富含维生素D，能防止钙的流失，对生长发育十分有益</a></li>
                            <li><a href="#">银耳富有天然植物性胶质，加上它的滋阴作用，长期服用可以润肤，并有祛除脸部黄褐斑、雀斑的功效</a></li>
                            <li><a href="#">银耳中的有效成分酸性多糖类物质，能增强人体的免疫力</a></li>
                            <li><a href="#">银耳中的膳食纤维可助胃肠蠕动，减少脂肪吸收，从而达到减肥的效果。</a></li>
                        
                            <li><a href="#">银耳还能增强肿瘤患者对放疗、化疗的耐受力</a></li>
                         </ul>
                  </div>  
                </div>
                <div id="main_box1">
            	<div class="box">
                	<h2><a class="more" href="#">更多...</a><span>美食介绍</span></h2>
                    <div class="box_con">
                    	<dl>
                        	<dt><a href="#"><img src="images/13.jpg" alt="福建：土笋冻" width="91" height="70" /></a></dt>
                            <dd><a href="#"><strong>福建：土笋冻</strong></a>土笋冻是发源于福建泉州的一种色香味俱佳的汉族传统风味小吃。如今流行于整个闽南地区。。</dd>
                        </dl>
                        <ul>
                        	<li><a href="#"></a></li>
                            <li><a href="#">我国多种药典中记载了其食用和药用价值，星虫性寒、味甘、咸，具有滋阴降火、清肺补虚、活血强身及补肾养颜等功能</a></li>
                            <li><a href="#">可治疗骨蒸潮热、阴虚盗汗、肺虚喘咳、胸闷痰多以及妇女产后乳汁稀少等症</a></li>
                            <li><a href="#">对治疗肺痨咳嗽、神经衰弱、小儿脾虚与肾亏而夜尿频繁等症均有效果</a></li>
                         <li><a href="#">营养丰富，富含蛋白质、多种氨基酸和钙、磷、铁等微量元素</a></li>
                            
                         </ul>
                  </div>  
                </div></div>
            </div>
    	</div>
      <div id="side">
      		<div class="side_box">
            	<h2><strong>美食</strong>导购</h2>
                <div class="side_con product">
                <ul>
                	<li><strong>语音业务:</strong><a href="#">普通电话</a>|<a href="#">语音数字中继</a></li>
                    <li><strong>语音业务:</strong><a href="#">普通电话</a>|<a href="#">语音数字中继</a></li>
                    <li class="product3"><strong>语音业务:</strong><a href="#">普通电话</a>|<a href="#">语音数字中继</a></li>
                </ul>
                </div>
            <div class="side_box">
            	<h2><strong>顾客</strong>问答</h2>
                <div class="side_con ask">
                    <dl>
                        <dt><a href="#">外卖基本上什么时候能送达？</a></dt>
                        <dd>关于送达时间大约在30分钟到1小时。</dd>
                    </dl>
                    <dl>
                        <dt><a href="#">实物的质量能否保证？</a></dt>
                        <dd>这是当然的，有专业的部门的检查报告。</dd>
                    </dl>
                    <dl>
                        <dt><a href="#">食品价格是否合理？</a></dt>
                        <dd>食品定价是经过各种因素考虑的，绝对的物美价廉。</dd>
                    </dl>
                    <dl>
                        <dt><a href="#">服务态度如何？</a></dt>
                        <dd>本店的服务态度端正，对顾客的要求会尽可能满足。</dd>
                    </dl>
                    <dl class="product3">
                        <dt><a href="#">对于本店的展望？</a></dt>
                        <dd>本店立志于做好、做大。</dd>
                    </dl>
              </div>
              
            </div>
             <div class="side_box">
            	<h2><strong>联系</strong>我们</h2>
                <div class="side_con contact"><a href="#"><img src="images/tel.gif" width="222" height="112" /></a>
                </div>   
              </div>
              	
           	
      		</div>
      </div>
     </div>
</div>
    <div id="footer">
    <dl>
    	<dt><a href="#">关于我们</a>||<a href="#">美食目录</a>||<a href="#">联系我们</a>||<a href="#">友情链接</a>||<a href="#">反馈问题</a>||<a href="#">广告合作</a>||</dt>
        <dd>Copyright&copy;2014-2016 zafu.edu.cn All Rights Reserved<br/>
        	
            </dd>
     </dl>
   </div>
</div>
</body>
</html>
