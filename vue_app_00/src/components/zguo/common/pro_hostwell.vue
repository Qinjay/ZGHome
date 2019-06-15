<template>
    <div class="hostwell">
       <p class="myfont1">美宿精选</p>
       <div class="hostwellC">
           <div class="u1">
               <a v-for="(item,i) of rows" :key="i" :href=item.href>
                   <div class="uImg">
                       <img :src=item.pic alt="">
                       <div class="coll"><img src="collection.png" alt=""></div>
                    </div>
                   <div>
                       <p class="myfont4">{{item.rent_way}}</p>
                       <p class="myfont3">{{item.title.slice(0,21)}}...</p>
                       <p> <span class="p-price">￥{{item.rent_price}}</span><span class="myfont4">/晚　</span><del class="prise-d" v-show=item.isdiscounts>￥{{item.original_cost}}</del></p>
                   </div>
               </a>
           </div>
          <div class="u2">
               <a v-for="(item,i) of rows" :key="i"  :href=item.href>
                   <div class="uImg">
                      
                       <img :src=item.pic alt="">
                       <div class="coll"><img src="collection.png" alt=""></div>
                    </div>
                   <div class="uC">
                       <p class="myfont4">{{item.rent_way}}</p>
                       <p class="myfont3">{{item.title.slice(0,21)}}...</p>
                       <p><span class="p-price">￥{{item.rent_price}}</span><span class="myfont4">/晚　</span><del class="prise-d" v-show=item.isdiscounts>￥{{item.original_cost}}</del></p>
                   </div>
               </a>
           </div>
       </div>
        <mt-button size="large" class="">查看更多民宿</mt-button>
    </div>
</template>
<script>
export default {
    data(){return{
        imgList:["ban1.jpg","ban2.jpg","ban3.jpg","ban4.jpg","ban5.jpg",],
        rows:[],
        id:1,
        }
    },
    created(){this.loadMore();},
    methods:{
        loadMore(){
            this.axios.get("index/hostwell").then(result=>{
               // console.log(result.data)
                this.rows=result.data;
                //console.log(result.data[1].isdiscounts)
            })
        },
    }
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
    /* text-overflow: ellipsis;
    -WebKit-line-clamp:2; */
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
.prise-d{
    color:#B0B0B0;
    font-size:0.3rem;
    /* display: none; */
}
.u1,.u2{width:49%;float: left;}
.u1>a,.u2>a{display:block;}
.u1{padding-right:0.5rem}
/* .u1{padding-right:0.2rem;} */
.u1>a:first-child .uImg{
    height:135px;
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
