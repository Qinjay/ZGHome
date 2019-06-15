<template>
    <div class="branHome">
        <div class="brand-top">
            <p>品牌民宿</p>
             <p>130+品牌已入驻</p> 
        </div>
        <mt-swipe class="branHomeF" :auto="2000" :show-indicators="false">
            <mt-swipe-item class="brand-c"  v-for="(item,i) of imgList" :key="i">
                <a href="javascript:;">
                    <div class="brandC-img">
                        <img :src=item alt="">
                    </div>
                    <div class="brandC-button">
                        <div class="brandC-b-left">
                            <p>醉爱文艺美宿</p>   <!--title-->
                            <p>老洋房</p><!--title-->
                            <p>醉爱</p><!--style-->
                            <p><span>￥259</span><span>/晚</span> </p><!--title-->
                        </div>
                        <div class="brandC-logo">
                            <img src="hostlogojpg.jpg" alt="">
                        </div>
                    </div>
                </a>
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
export default {
    data(){return{
        imgList:["ban1.jpg","ban2.jpg","ban3.jpg","ban4.jpg","ban5.jpg",]
    }}
}
</script>

<style scoped>
    .branHome{
        margin:1rem auto;
        height:23rem;
        }
    .branHomeF{
        border-radius:7px; 
         box-shadow:0 0 5px 1px #B0B0B0;
    }
    .brand-top{
        display:flex;
        justify-content:space-between;
        align-items: center;
    }
    .brand-top>p:first-child{
        font-size:1.5rem;
        color:#000;
    }
    .brand-top>p+p{
        font-size:0.8rem;
        color:#8f8f94;
    }
    .brandC-img{
        width:100%;height:227px;
    }
    .brandC-img>img{width:100%;height:100%}
    .brandC-button{
        display:flex;
        justify-content:space-between;
        align-items:top;
    }
    .brandC-logo{width:25%;padding:1rem;}
    .brandC-logo>img{width:100%;}
    .brandC-b-left>p{
        margin:0.5rem 1rem;
    }
    .brandC-b-left>p:first-child{
       font-size:1.2rem;
       color:#000;
    }
    .brandC-b-left>p:nth-child(2){
        width:35%;
        text-align: center;
        font-size:0.8rem;
        line-height: 1.5rem;
        color:#fff;
        background-color: #C2AD98;
        border-radius: 3px;
    }
    .brandC-b-left>p:nth-child(3){
        font-size: 1rem;
        color:#8f8f94;
    }
    .brandC-b-left>p:nth-child(4)>span:first-child{
        font-size: 1.3rem;
        font-weight: bolder;
        color:#000;
    }  
    .brand-c>a{display:black;}
</style>
