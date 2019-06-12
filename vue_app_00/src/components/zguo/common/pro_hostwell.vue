<template>
    <div class="hostwell">
       <p class="myfont1">美宿精选</p>
       <div class="hostwellC">
           <ul class="u1">
               <li v-for="(item,i) of imgList" :key="i">
                   <div class="uImg">
                       <img :src=item alt="">
                       <div class="coll"><img src="collection.png" alt=""></div>
                    </div>
                   <div>
                       <p class="myfont4">整套·2居室 | 可住3-4人</p>
                       <p class="myfont3">近光谷地铁站两室一厅蒲公英系列</p>
                       <p> <span class="p-price">￥298</span><span class="myfont4">/晚</span></p>
                   </div>
               </li>
           </ul>
           <ul class="u2">
               <li v-for="(item,i) of imgList" :key="i">
                   <div class="uImg">
                       <img :src=item alt="">
                       <div class="coll"><img src="collection.png" alt=""></div>
                    </div>
                   <div class="uC">
                       <p class="myfont4">整套·2居室 | 可住3-4人</p>
                       <p class="myfont3">近光谷地铁站两室一厅蒲公英系列</p>
                       <p> <span class="p-price">￥298</span><span class="myfont4">/晚</span></p>
                   </div>
               </li>
           </ul>
       </div>
        <mt-button size="large" class="">查看更多民宿</mt-button>
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
.myfont1{
    font-size:1.5rem;
    color:#000;
    margin-top: 1rem;
}
.myfont3{
    font-size:1rem;
    color:#000;
}
.myfont4{
    font-size:0.9rem;
    color:#B0B0B0;
}
.p-price{
    color:#f00;
    font-size:1rem;
    font-weight: bolder;
}
.u1,.u2{width:49%;float: left;}
.u1{padding-right:0.5rem}
/* .u1{padding-right:0.2rem;} */
.u1>li:first-child .uImg{
    height:125px;
    }
.uImg{
    height:107px;
    position: relative;
    }
.uImg>img{width:100%;height:100%;border-radius:3px;}
.coll{
    width:25px;height:25px;
    position: absolute;
    top:1%;right:1%;
    }
.coll>img{width:100%;height:100%}
.hostwell .mint-button--default{
        background-color:#E6E6E6;
        font-size:1rem;
    }
</style>
