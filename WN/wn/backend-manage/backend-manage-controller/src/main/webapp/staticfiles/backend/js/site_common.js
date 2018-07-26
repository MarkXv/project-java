// SiteModule Common  JavaScript
//选中数
var checkedNum = 0;

$(function(){
	$('#backBut').click(function(){
		window.history.go(-1);
	});
/* --为全选按钮绑定点击事件 */
	$("#selectAllBut").click(

			function() {
				$("input[type='checkbox']").attr("checked",
						$(this).attr("checked"));
				// 设置所有行全部选中效果 ----即设置全部选中的按钮的父行元素的样式
				if ($("#selectAllBut").attr("checked") == true) {
					$("input:checked[id!='selectAllBut']").parents("tr").each(
							function() {
								$(this).css("background-color", "#5874E3");
								$(this).css("color", "#E3E3E3");
								$(this).css("text-shadow",
										"2px 2px 5px #6A676A");
							});
					// 设置选中的个数
					checkedNum = $("input[type='checkbox']").length - 1;
				} else {
					// 取消全选后的效果 -----即直接将所有行设置成未选中
					$("input[type='checkbox'][id!='selectAllBut']").parents("tr").each(
							function() {
								$(this).css("background-color", "#FAF7C1");
								$(this).css("color", "#000");
								$(this).css("text-shadow", "none");
								
								
					});
					// 设置选中的个数
					checkedNum = 0;
					//清除输入框中的值
					clearInput();
					//将全选的选中状态从选中该为未选中!!!!
					$("#selectAllBut").attr("checked",false);
				}

	});
	
})


// 为每行添加点击事件


/*清除所有和员工列表匹配的输入框的值（如果有就清空，没有就不操作）*/
function clearInput(){
	$("#all").attr("checked",false);
	$("input[type='text']").val("");
//	$("#all").attr("checked",false);
//	$("#id").val("");
//	$("#empName").val("");
//	$("#gender").val("");
//	$("#email").val("");
//	$("#tel1").val("");
//	$("#tel2").val("");
//	$("#nat").val("");
//	$("#addr").val("");
//	$("#salary").val("");

}