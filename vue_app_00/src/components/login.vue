<template>
    <div class="login">
        <h4 style="text-align:center">淘宝网手机登录</h4>
        <div class="tb-logo">
        <img src="../assets/TB.png" >
        </div>
        <!-- 账号 -->
        <mt-field :label="account" :placeholder="accPlaceholder"></mt-field>
        <!-- 密码 如果登录方式是 账户登录就显示 --> 
        <mt-field :label="passName" :placeholder="passPut" class="test"><button v-show="!isUserAccount">短信校验码</button></mt-field>
        <!-- 登录和切换登录按钮 -->
        <div>
            <button class="logbtn">登录</button>
            <!-- 验证用户名、密码是否为空 -->
            <button v-show="!isUserAccount" @click="changeLoginMethod"  class="accLogin">账户密码登录</button>
            <!-- 变量 -->
        </div>
        <!-- 如果 登录方式是 账户登录就不显示-->
        <a v-show="isUserAccount" @click="changeLoginMethod">短信校验码登录</a>
    </div>
</template>
<script>
export default {
    data(){return{
         accPlaceholder:"手机号/邮箱/会员名",
         account:"账户",
         passName:"登录密码",
         passPut:"请输入密码",
         //当前登录的方式
         isUserAccount:true,
         //为按钮绑定点击事件
         }
        },
    methods:{
        //changeLoginMethod
        changeLoginMethod(){
            // 修改提示文字：手机号/邮箱/会员名
            //否则修改提示消息：请输入手机号码
            //isUserAccount切换
            if(this.isUserAccount==true){
                this.isUserAccount=false;
                this.accPlaceholder="请输入手机号码";
                this.account="手机号码",
                this.passName="短信校验码",
                this.passPut="短信校验码"
            }else{
                this.isUserAccount=true;
                this.accPlaceholder="手机号/邮箱/会员名",
                this.account="账户",
                this.passName="登录密码",
                this.passPut="请输入密码"
            }
        }
    }
}
</script>
<style scoped>
.tb-logo{width: 10rem;
    height: 3.2rem;margin:0 auto}
    .tb-logo>img{width:100%}
input[type='text']{
    border:0!important;
    outline:0!important;
    margin:0!important;
    padding:0!important;
    }
 button{border:0!important}
.mint-field .mint-cell-title{width:85px!important;}
.logbtn{
    width:90%;
    margin:1rem;
    background:#FF4400;
    line-height: 2rem;
    /* font-size:1.5rem; */
    color:honeydew;
}
.accLogin{border:1px solid #ff4400;}
</style>

