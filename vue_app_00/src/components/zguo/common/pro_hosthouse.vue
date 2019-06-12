<template>
    <div class="hosthouse">
        <p class="myfont1">热门入住地</p>
        <div>
            <ul id="hostul" >
                <li v-for="(elem,i) of hostList" :key="i" @touchmove="touchmove" @touchstart="touchstart" @touchend="touchend" @click="bgcolchange">
                    <p class="myfont3">{{elem.where}}</p> 
                    <p class="myfont4">{{elem.n}}选择</p>
                </li>
            </ul>
        </div>
        <div class="hosthouseCon">
            <div v-for="(item,i) of imgList" :key="i">
                <div class="hostImg"><img :src=item alt=""></div>
                <div>
                    <p class="myfont4">整套·2居室 | 可住3-4人</p>
                    <p class="myfont3">近光谷地铁站两室一厅蒲公英系列</p>
                    <p> <span class="p-price">￥298</span><span class="myfont4">/晚</span></p>
                </div>
            </div>
        </div>
        <mt-button size="large">查看更多武汉民宿</mt-button>
    </div>
</template>
<script>
export default {
    data(){return{
        x1:0,
        x2:0,
        x3:0,
        imgList:["ban1.jpg","ban2.jpg","ban3.jpg","ban4.jpg","ban5.jpg",],
        xchange:0, //x 改变值 x3-x1
        marginL:0,//margin-left
        hostList:[
            {where:"光谷/鲁巷",n:"36%"},
            {where:"江汉路步行街",n:"22%"},
            {where:"光谷科技中心",n:"22%"},
            {where:"武昌",n:"13%"},
            ],
    }},
    methods:{
        bgcolchange(e){    //？？？？？？？
            console.log(this)
            this.className="bgcolor";
        },
        touchstart(e){ //按下
            this.x1=e.touches[0].pageX;
           // console.log(this)
        },
        touchmove(e){//移动
            var hostul=document.getElementById("hostul")
                this.x2=e.touches[0].pageX;
                this.marginL=this.x2-this.x1+this.xchange; //margin-left
               hostul.style.marginLeft=this.marginL+"px";
        },
        touchend(e){//抬起
            var hh=parseInt(hostul.style.marginLeft);
            this.x3=e.changedTouches[0].pageX;
              this.xchange+=(this.x3-this.x1);
               this.marginL=this.xchange;
             if( this.marginL>0){ 
                  this.marginL=0;
                 this.xchange=0
                 }else if(this.marginL<-190){ //img.width-window.innerWidth 600-375
                    this.marginL=-190;
                    this.xchange=-190
                 }else{
                this.marginL= this.marginL;
              }
              hostul.style.marginLeft=this.marginL+"px";
        }
        
       
    },
}
</script>


<style scoped>
.myfont1{
    font-size:1.5rem;
    color:#000;
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
#hostul{ width:600px;} 
#hostul>li{
    width:120px;
    float: left;
    border:1px solid #ebebeb;
    padding: 0.5rem;
    margin:0.5rem;
    /* flex-wrap: nowrap; */
    }
#hostul>li>p{
    line-height:1rem;margin:0
}
.hosthouseCon>div{
    float: left;
     width:47%;
     margin:0.3rem;
    /* display:flex;
    flex-wrap:wrap;*/
    justify-content: space-between 
}
 .hostImg{
    height:107px;
} 
.hostImg>img{width:100%;height: 100%;border-radius:3px;}
.bgcolor{
    background-image : linear-gradient(45deg, #1F1F1F 100%, #545454 0%);
    }
.hosthouse .mint-button--default{
        background-color:#E6E6E6;
        font-size:1rem;
    }
</style>
