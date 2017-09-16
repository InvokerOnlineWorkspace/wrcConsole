$(document).ready(function(){

    var boatData = {
        id:$('.id').val(),
        boatName:$('.boatName').val(),
        boatType:$('.boatType').val(),
        boatBrand:$('.boatBrand').val(),
        destId:$('.destId').val(),
        boatSeat:$('.boatSeat').val(),
        boatDetail:$('.boatDetail').val()
    }
    /**
     * 新增
     * */
   $('#save-boat-info').onclick=function(boatData){
       $.ajax({
           url:document.domain+'/boat/save',
           type:"GET",
           async:true,
           data:boatData,
           success:function(req){
               //请求成功时处理
               if(req.reCode==0){
                   alert("系统异常，请联系管理员！");
               }else if(req.reCode==1){
                   alert("新增帆船信息成功！");
               }else if(req.reCode==2){
                   alert("新增数据有误，请重新填写");
               }
           },
           error:function(){
               //请求出错处理
               alert("系统异常，请联系管理员！");
           }
       })
   };
    /**
     * 修改
     * */
    $('#edit-boat-info').onclick=function(boatData){
        $.ajax({
            url:document.domain+'/boat/modify',
            type:'GET',
            async:true,
            data:boatData,
            success:function(req){
                //请求成功时处理
                if(req.reCode==0){
                    alert("系统异常，请联系管理员！");
                }else if(req.reCode==1){
                    alert("新增帆船信息成功！");
                }else if(req.reCode==2){
                    alert("新增数据有误，请重新填写");
                }
            },
            error:function(){
                //请求出错处理
                alert("系统异常，请联系管理员！");
            }
        })
    };
});