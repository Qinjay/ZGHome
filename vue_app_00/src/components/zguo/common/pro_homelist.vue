<template>
    <div class="homelist">
        <p class="myfont1">民宿清单</p>
        <ul id="mul">
            <li class="homelistC" v-for="(item,i) in imgList" :key="i" @touchmove="touchmove" @touchstart="touchstart" @touchend="touchend">
                <div class="homelistImg">
                    <img :src=item alt="">
                <p class="listposi">旅游热门</p>
                </div>
                <div>
                    <p class="myfont2">武汉</p>
                    <p class="myfont3">坐落窗口 <br>静望长江日出日落</p>
                    <p class="myfont4">满足你对江城-武汉的所有...</p> <!--数据库截取12个字 然后用。。。省略-->
                </div>
            </li>
        </ul>
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
        marginL:0 //margin-left
    }},
    methods:{
        touchstart(e){ //按下
            this.x1=e.touches[0].pageX;
            //console.log(this)
        },
        touchmove(e){//移动
            var mul=document.getElementById("mul")
                this.x2=e.touches[0].pageX;
                this.marginL=this.x2-this.x1+this.xchange; //margin-left
                mul.style.marginLeft=this.marginL+"px";
        },
        touchend(e){//抬起
            var hh=parseInt(mul.style.marginLeft);
            this.x3=e.changedTouches[0].pageX;
              this.xchange+=(this.x3-this.x1);
               this.marginL=this.xchange;
             if( this.marginL>0){ 
                  this.marginL=0;
                 this.xchange=0
                 }else if(this.marginL<-488){ //img.width-window.innerWidth
                    this.marginL=-488;
                    this.xchange=-488
                 }else{
                this.marginL= this.marginL;
              }
              mul.style.marginLeft=this.marginL+"px";
        }
    }
}
</script>
<style scoped>
.homelist{
    margin:4rem auto;
}
.homelist>ul{
    height:16rem;
    width:870px;
    /* overflow: hidden; */
    /* white-space: nowrap !important; */
    /* overflow-x: auto !important; */

    /* display: flex; */
     /* flex-wrap:nowrap; */
    }
.myfont1{
    font-size:1.5rem;
    color:#000;
}
.myfont2{
    font-size:0.9rem;
    color:#8f8f94;
}
.myfont3{
    font-size:1rem;
    color:#000;
}
.myfont4{
    font-size:0.9rem;
    color:#B0B0B0;
}
.homelistC{
    width:160px;
    margin:0.3rem;
   
    float: left;
   
}
/* .homelistImg{width:50%} */
.homelistImg>img{width:100%;height:100%;border-radius:5px;}
.homelistImg{
    position: relative;
    width: 100%;
    height: 107px;
    }
.listposi{
    background:rgba(0,0,0,0.55);
    color:#fff;
    font-size:5px;
    border-radius:4px;
    padding:1px;
    position: absolute;
    bottom:-8px;
    left:2%;
}
</style>

