<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="width: 400px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3 class="h-modal-title title">Settings</h3>
            </div>
            <div class="modal-body content">
                ddd
            </div>
            <div class="modal-footer" style="padding-top: 5px; padding-bottom: 5px">
                <a href="#" class="btn btn-default" onclick="Feizhou.Util.confirmClick(0)">关闭</a>
                <a href="#" class="btn btn-primary" onclick="Feizhou.Util.confirmClick(1)">确定</a>
            </div>
        </div>
    </div>
</div>
<!-- loader -->
<img id="progressImgage" class="gap-progress" style="display:none" alt="" src="${basePath}/images/ajax-loader.gif"/>
<div id="maskOfProgressImage" class="gap-mask" style="display:none"></div>

<!--Basic Scripts-->
<script src="${staticPath}/beyond_admin/assets/js/bootstrap.min.js"></script>

<!--Beyond Scripts-->
<script src="${staticPath}/beyond_admin/assets/js/beyond.min.js"></script>

<!--Page Related Scripts-->
<script src="${staticPath}/beyond_admin/assets/js/datatable/jquery.dataTables.min.js"></script>
<script src="${staticPath}/beyond_admin/assets/js/datatable/dataTables.bootstrap.min.js"></script>

<!--Page Related Scripts-->
<script src="${staticPath}/beyond_admin/assets/js/bootbox/bootbox.js"></script>

<!--Page Related Scripts-->
<script src="${staticPath}/beyond_admin/assets/js/toastr/toastr.js"></script>

<!--Page Related Scripts-->
<script src="${staticPath}/beyond_admin/assets/js/validation/bootstrapValidator.js"></script>

<!--Bootstrap Summernote-->
<script src="${staticPath}/beyond_admin/assets/js/editors/summernote/summernote.js"></script>

<!-- textarea autosize -->
<script src="${staticPath}/beyond_admin/assets/js/textarea/jquery.autosize.js"></script>

<!--Bootstrap Date Picker-->
<script src="${staticPath}/beyond_admin/assets/js/datetime/bootstrap-datepicker.js"></script>
<script src="${staticPath}/beyond_admin/assets/js/datetime/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${staticPath}/beyond_admin/assets/js/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${staticPath}/beyond_admin/assets/js/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="${staticPath}/fileinput/js/fileinput.js"></script>
<script src="${staticPath}/fileinput/js/fileinput_locale_zh.js"></script>

<!-- jquery.tree -->
<script src="${staticPath}/plugins/jquery-tree/jquery.tree.js"></script>

<script>

    $(".fz-datepicker").datepicker({
        format: "yyyy-mm-dd",
        language: "zh-CN",
        todayBtn: "linked",
        changeMonth: true,
        autoclose: true,
        todayHighlight: true
    });

    $(".fz-datetimepciker").datetimepicker({
        format: "yyyy-mm-dd hh:ii",
        language: "zh-CN",
        autoclose: true,
        todayBtn: true,
        pickerPosition: "bottom-left"
    });

    $.fn.modal.Constructor.prototype.enforceFocus = function () {
        var that = this;
        $(document).on(
                'focusin.modal',
                function (e) {
                    if ($(e.target).hasClass('select2-input')) {
                        return true;
                    }

                    if (that.$element[0] !== e.target
                            && !that.$element.has(e.target).length) {
                        that.$element.focus();
                    }
                });
    };
</script>