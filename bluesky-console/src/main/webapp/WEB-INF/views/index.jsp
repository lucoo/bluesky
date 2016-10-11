<%--
  Created by IntelliJ IDEA.
  User: lee
  Date: 15/11/24
  Time: 下午6:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--vue--%>
<script src="${staticPath}/vue/vue.min.js"></script>
<div>
    <h2>管理系统首页</h2>
    <br>
    <div id="testVue">
        <div v-if="Math.random()>0.5">
            大于
        </div>
        <div v-else>
            不大于
        </div>
        <p>
            {{message}}
        </p>
        <p>
            {{message|uppercase}}
        </p>
        <p>{{message | reverse | uppercase}}</p>
        {{msgbind}}
        <input v-model="msgbind">
    </div>

</div>
<script>
//    Vue.filter('reverse', function (value) {
//        return value.split('').reverse().join('')
//    })
    new Vue(
            {
                el: "#testVue",
                data: {
                    message: 'hello world!',
                    msgbind: 'is auto change'
                },
                method: {
                    reverseMessage: function () {
                        this.message = this.message.split('').reverse().join('')
                    }
                }

            }
    );
</script>
