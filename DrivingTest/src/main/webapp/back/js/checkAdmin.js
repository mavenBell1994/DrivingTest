
//进来后显示所有管理员的信息,需要判定是sa								
$('#checkAdmin').bootstrapTable({
	method : 'get',
	url : 'admin/allAdmin',
	cache : false,
	striped : true,
	pagination : true,
	dataType : "json",
	pageList : [ 2,5,8 ],
	pageSize : 2,
	pageNumber : 1,
	search : true, 
	sidePagination : 'server',
	showColumns : true,
	minimumCountColumns : 2,
	clickToSelect : true, 
	showToggle : true,
	columns : [ {field : 'state',checkbox: true},
	            {field : 'aid',title : 'ID',sortable : true}, 
	            {field : 'aname',title : '姓名',sortable : true}, 
	            {field : 'apwd',title : '密码',sortable : true},
	            {field : 'issuper',title : '管理员级别',sortable : true},
	            {field : 'status',title : '状态',sortable : true}//,
//	            {field : 'operate',title: '操作',width: 100,align: 'center',valign: 'middle',formatter:function(){
//	            		
//	            }} 
	            ],
	 onLoadSuccess:function(){
		  //mif.showErrorMessageBox("数据加载成功");
     },
     onLoadError: function () {
         mif.showErrorMessageBox("数据加载失败！");
     }
	
});





