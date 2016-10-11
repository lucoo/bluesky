
$(function(){
});

//新增页面(默认不加载图片)
function initFileInputEmpty(id,uploadUrl,minSize,maxSize,imgSuccessArr){
    var control = $('#'+id);
    control.fileinput({
        uploadUrl: uploadUrl, //上传的地址
        allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀,
        initialPreviewShowDelete : true,
        minFileCount:minSize ? minSize : 1,
        maxFileCount:maxSize ? maxSize : 1,
    });
    control.on('fileuploaded',function(event, data, previewId, index){
        imgSuccessArr.push(data.response.data);
    });
}
//新增页面(默认不加载图片)
function initFileInputEmpty4callBack(id,uploadUrl,minSize,maxSize,callBack){
    var control = $('#'+id);
    control.fileinput({
        uploadUrl: uploadUrl, //上传的地址
        allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀,
        initialPreviewShowDelete : true,
        minFileCount:minSize ? minSize : 1,
        maxFileCount:maxSize ? maxSize : 1,
    });
    control.on('fileuploaded',callBack);
}
//修改页面(可能加载图片)
//容器,服务器上传地址,最小size,最大size,容器内上传成功的图片数组,初始化图片名称数组,初始化图片真实路径数组,服务器删除地址
function initFileInputNotEmpty(basepath,id,uploadUrl,minSize,maxSize,imgSuccessArr,initImgNameArray,initImgRealPathArray,deleteUrl){
    var control = $('#'+id);
    control.fileinput({
        uploadUrl: uploadUrl, //上传的地址
        allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀,
        initialPreviewShowDelete : true,
        minFileCount:1,
        maxFileCount:6,
        initialPreview:getFiles(basepath,initImgRealPathArray),
        initialPreviewConfig:getFilesConfig(initImgNameArray,deleteUrl)
    });
    control.on('fileuploaded',function(event, data, previewId, index){
        imgSuccessArr.push(data.response.data);
    });

    control.on('filedeleted',function(event,key){
            imgSuccessArr.splice(key,1);
    });
}

function getFiles(basepath,realPathArr){
    var imgRealPathArr = new Array();
    if(realPathArr != ''){
        imgRealPathArr = realPathArr;
    }
    var filesArr = new Array();
    if(imgRealPathArr.length>0){
        for(i in imgRealPathArr){
            filesArr.push("<img src="+basepath+'/common/image.rest?realPath='+imgRealPathArr[i]+" class='file-preview-image'>");
        }
    }
    return filesArr;
}

function getFilesConfig(imgNameArr,deleteUrl){
    var imgNameAtrr = new Array();
    if(imgNameArr != ''){
        imgNameAtrr = imgNameArr;
    };
    var filesConnfigArr = new Array();
    if(imgNameAtrr.length>0){
        for(i in imgNameAtrr){
            filesConnfigArr.push({
                caption: imgNameAtrr[i],
                width: '120px',
                url: deleteUrl+imgNameAtrr[i],
                key: i,
                extra: function(){
                    return {id: 100}
                }
            });
        }
    }
    return filesConnfigArr;
}

//批量删除图片
function batchDeletePhoto(deleteUrl,imgSuccessArr){
    if(imgSuccessArr.length>0){
        var photoUrls ="";
        if (imgSuccessArr.length>0){
            for (i in imgSuccessArr){
                photoUrls += imgSuccessArr[i]+",";
            }
        }
        jQuery.ajax({
            url: deleteUrl,
            data: "photoNames=" + photoUrls,
            type: "post",
            async: false,
            success: function (result) {
                if (result.code == "1") {
                    Feizhou.Util.successNoty('删除成功');
                    //清空图片url数组
                    imgSuccessArr = new Array();
                } else {
                    Feizhou.Util.errorNoty(result.message);
                }
            }
        });
    }
}
