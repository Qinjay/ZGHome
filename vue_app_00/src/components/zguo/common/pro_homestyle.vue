<template>
    <div class="homestyle">
        <p class="myfont1">主题精选</p>
        <ul id="sul">
            <li class="homestyleC" v-for="(item,i) in imgList" :key="i" @touchmove="touchmove" @touchstart="touchstart" @touchend="touchend">
                <a href="javascript:;">
                    <div class="homestyleImg">
                        <img :src=item alt="">
                    </div>
                    <div>
                        <p class="myfont3">北欧简约</p>
                        <p class="myfont2">看腻了清晰民宿，了解下北欧风吧</p>
                        <p class="myfont4">169元起</p> 
                    </div>
                </a>
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
            console.log(this)
        },
        touchmove(e){//移动
            var sul=document.getElementById("sul")
                this.x2=e.touches[0].pageX;
                this.marginL=this.x2-this.x1+this.xchange; //margin-left
               sul.style.marginLeft=this.marginL+"px";
        },
        touchend(e){//抬起
            var hh=parseInt(sul.style.marginLeft);
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
              sul.style.marginLeft=this.marginL+"px";
        }
        
       
    }
}
</script>
<style scoped>

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
    margin:0.5rem auto;
}
.myfont4{
    font-size:0.9rem;
    color:#B0B0B0;
}
/*.homelist{
    margin:4rem auto;
}*/
.homestyle>ul{
    height:16rem;
    width:870px;
    /* white-space: nowrap !important; */
    /* overflow-x: auto !important; */
    }
    
.homestyleC{
    width:160px;
    margin:0.3rem;
    float: left;
   
}
.homestyleC>a{display:block;}
.homestyleImg>img{width:100%;height:100%;border-radius:5px;}
.homestyleImg{
    position: relative;
    width: 100%;
    height: 107px;
}
</style>

