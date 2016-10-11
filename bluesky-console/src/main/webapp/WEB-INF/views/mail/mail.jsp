<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="page-body no-padding">
    <div class="mail-container">
        <div class="mail-header">
            <ul class="header-buttons">
                <li>
                    <a id="send" class="tooltip-primary" data-toggle="tooltip" data-original-title="发送"><i
                            class="fa fa-external-link"></i> </a>
                </li>
                <li>
                    <a id="attach" class="tooltip-primary" data-toggle="tooltip" data-original-title="附件">
                        <i class="glyphicon glyphicon-paperclip"></i>
                    </a>
                </li>
                <li>
                    <a id="cancel" class="tooltip-primary" data-toggle="tooltip" data-original-title="取消"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </li>
                <li>
                    <a id="draft" class="tooltip-primary" data-toggle="tooltip" data-original-title="存草稿"><i
                            class="glyphicon glyphicon-save"></i></a>
                </li>
                <li>

                </li>
            </ul>

            <div class="draft">
                多个收件人用分号隔开
            </div>
        </div>
        <div class="mail-body">
            <div class="mail-compose">
                <form method="post" role="form">
                    <div class="form-group bordered-left-4 bordered-themeprimary">
                        <label for="to">收件人:</label>
                        <input type="text" class="form-control" id="to" tabindex="1"/>
                        <%--<div class="field-options">--%>
                        <%--<a href="javascript:;"--%>
                        <%--onclick="$(this).hide(); $('#cc').parent().removeClass('hidden'); $('#cc').focus();">CC</a>--%>
                        <%--<a href="javascript:;"--%>
                        <%--onclick="$(this).hide(); $('#bcc').parent().removeClass('hidden'); $('#bcc').focus();">BCC</a>--%>
                        <%--</div>--%>
                    </div>
                    <div class="form-group bordered-left-4 bordered-themethirdcolor">
                        <label for="cc">抄送:</label>
                        <input type="text" class="form-control" id="cc" tabindex="2"/>
                    </div>
                    <div class="form-group bordered-left-4 bordered-themefourthcolor">
                        <label for="bcc">暗抄送:</label>
                        <input type="text" class="form-control" id="bcc" tabindex="2"/>
                    </div>
                    <div class="form-group bordered-left-4 bordered-themesecondary">
                        <label for="subject">主题:</label>
                        <input type="text" class="form-control" id="subject" tabindex="1"/>
                    </div>
                    <div class="compose-message-editor">
                        <div id="email-text"></div>
                    </div>
                </form>
            </div>
        </div>
        <div class="mail-sidebar">
            <ul class="mail-menu">
                <li>
                    <a href="inbox.html">
                        <i class="fa fa-inbox"></i>
                        <span class="badge badge-default badge-square pull-right">6</span>
                        Inbox
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-star"></i>
                        <span class="badge badge-default badge-square pull-right">1</span>
                        Important
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="glyphicon glyphicon-share"></i>
                        <span class="badge badge-default badge-square pull-right">1</span>
                        Sent
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-envelope"></i>
                        Drafts
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-ban"></i>
                        <span class="badge badge-default badge-square pull-right">1</span>
                        Spam
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i>
                        Trash
                    </a>
                </li>
                <li class="divider">
                </li>
                <li>
                    <a href="#">
                        + Add Folder
                    </a>
                </li>
            </ul>
            <ul class="mail-menu">
                <li class="menu-title">
                    <h6>Tags</h6>
                </li>
                <li>
                    <a href="#">
                        <span class="badge badge-palegreen badge-tag badge-square"></span>
                        Business
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="badge badge-darkorange badge-tag badge-square"></span>
                        Sports
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="badge badge-yellow badge-tag badge-square"></span>
                        Friends
                    </a>
                </li>
                <li class="divider">
                </li>
                <li>
                    <a href="#">
                        + Add Tag
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="modal fade bs-example-modal-md" tabindex="-1" role="dialog" id="attachModal"
     aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="mySmallModalLabel">附件上传</h4>
            </div>
            <div class="modal-body">
                <input class="note-image-input" name="files" type="file">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<script>
    $(function () {
        $('#email-text').summernote({height: $(window).height() - 310});

        $('#attach').click(function () {
            $('#attachModal').modal('show');
        });
    });
</script>
