//请求排名前三的景点
/*function findTop3(SysResult){
	
	var root = document.getElementById("top3Div");
	var el;
	var t3c;
	var a;
	var img;
	var span;
	var list = SysResult.data.length;
	for(var i=0;i<list.length;i++){
		el = document.createElement("div");
		el.className="col-md-4 column our-feat";
		t3c = document.createElement("div");
		t3c.className="top3Container";
		
		a=document.createElement("a");
		a.href="/toabout?spotsId="+soptsId;
		
		img = document.createElement("img");
		img.src=spot.pictureList[0].imgurl;
		img.className="circle";
		img.width="250px";
		img.height="200px";
		a.appendChild(img);
		
		span = document.createElement("span");
		span.className="TOP3_p";
		span.textContent="NO."+(i+1)+"&nbsp;&nbsp;"+spotsName;
		a.appendChild(span);
		
		t3c.appendChild(a);
		root.appendChild(t3c);
	}
	
}
*/
//请求所有景点名称
/*function findAllSpotsName(SysResult){
	
	
}

//首页请求景点前6
function findSpots6(SysResult){
	if(SysResult.status==200){
		//成功
		//处理数据
		var root = document.getElementById("top3Div");
		
		var spots = SysResult.data;
		
		for(var i=0;i<spots.length;i++){
			var spot = document.createElement("div");
			spot.className="col-md-4 col1";
			
			var figure = document.createElement("figure");
			figure.className="effect-bubba";
			
			var img = document.createElement("img");
			img.className="img-responsive";
			img.width="350px";
			img.height="233px";
			img.src="-------------------";
			
			figure.appendChild(img);
			
			var figcaption = document.createElement("figcaption");
			var h4 = document.createElement("h4");
			h4.textContent="spotsName";
			figcaption.appendChild(h4);
			var p =document.createElement("p");
			p.textContent="spotRemark";
			figcaption.appendChild(p);
			
			figure.appendChild(figcaption);
			spot.appendChild(figure);
			
			var clearFix = document.createElement("div");
			clearFix.className="clearfix";
			spot.appendChild(clearFix);
			
			var effectgrid = document.createElement("div");
			effectgrid.className="effect-grid";
			
			var h3 = document.createElement("h3");
			var a = document.createElement("a");
			a.href="toabout?spotsId=${spot.spotsId}";
			a.textContent=spotName;
			h3.appendChild(a);
			effectgrid.appendChild(h3);
			
			p = document.createELement("p");
			a = document.createElement("a");
			a.href="toabout?spotsId="+spotId;
			a.textContent=spotRemark;
			p.appendChild(a);
			effectgird.appendChild(p);
			
			spot.appendChild(effectgrid);
		}
		
	}else if(SysResult.status==201){
		//失败
	}
}
*/
//请求景点详情
function details(SysResult){
	var spots = eval(SysResult).data;
	
	document.getElementById("spotsName").textContent=spots.spotsName;
	
	
	//需要处理图片数组的显示
	document.getElementById("PICList").textContent=spots.PICList;
	
	
	
	document.getElementById("remark").textContent=spots.remark;
	document.getElementById("ticketPrice").textContent=spots.ticketPrice;
	document.getElementById("openTime").textContent=spots.openTime;
	document.getElementById("tel").textContent=spots.tel;
	document.getElementById("website").textContent=spots.website;
	document.getElementById("website").href=spots.website;
	document.getElementById("advice").textContent="故宫游客非常多，至少需要半天时间参观，若时间充裕，建议1天为佳。";
	
}

//处理搜索结果
/*function searchSpots(SysResult){
	
}*/

//处理获取到的所有景点——所有景点界面
/*function getAllSpots(SysResult){
	
}*/

//处理跨域登陆请求
function login(SysResult){
	var result = eval(SysResult);
	if(result.status==200){
		//登陆成功,跳转
		window.location.href="http://www.wn.com";
	}else if(result.status=201){
		//登陆失败，回显错误信息
		document.getElementById("errInfo").textContent=result.msg;
	}
	
}

//处理跨域登出请求
function logout(SysResult){
	window.location.href="http://www.wn.com";
}

//处理跨域查询登陆信息
/*<li><a href= onclick="logout()"><span data-hover="Login">Logout</span></a></li>*/
function getInfo(SysResult){
	var li = document.createElement("li");
	var a = document.createElement("a");
	a.href="javascript:0";
	var span = document.createElement("span");
	if(SysResult.data==201){
		span.textContent="Login";
	//未登陆
	}else if(SysResult.data==200){
		//成功
		span.textContent="Logout";
	}else if(SysResult.data==202){
	//失败
		
	}
	a.appendChild(span);
	li.appendChild(a);
	
	document.getElementById("logInfo").appendChild(li);
}
