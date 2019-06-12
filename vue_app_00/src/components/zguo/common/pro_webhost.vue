<template>
  <div class="webhost">
    <div class="stitle">
      <div class="myfont1">网红民宿</div>
      <div class="d2">52892人正在种草
        <img src="">
      </div>
    </div>
    <Swiper ref="swiper" v-if="list.length > 0" :autoPlay='true' :showIndicator='true' interval="2500" duration="300">
      <Slide @click="clickMe" v-for="(n,key) in list" :key="key">
        <img :src="n.img"/>
      </Slide>
    </Swiper>
    <div class="mimg">
      <img :src="m.img" v-for="(m,key) in list1" :key="key">
      <!-- <div v-for="(q,key) in list2" :key="q">{{list2[q]}}</div> -->
    </div>
   </div>
</template>
<script>
import { Swiper, Slide } from 'vue-swiper-component';
export default {
  data() {
     return {
      list: [
        { img: 'demo1.jpg' },
        { img: 'demo2.jpg' },
        { img: 'demo3.jpg' },
        { img: 'demo4.jpg' },
        { img: 'demo5.jpg' },
        { img: 'demo6.jpg' },
        { img: 'demo7.jpg' },
        { img: 'demo8.jpg' },
        { img: 'demo9.jpg' }
      ],
      list1:[
        { img: 'demo1.jpg' },
        { img: 'demo2.jpg' },
        { img: 'demo3.jpg' },
        { img: 'demo4.jpg' }
      ],
      
    }
  },
  components: {
    Swiper,
    Slide
  },
  methods: {
    clickMe (index){
      console.log(index)
    },
  }
}
</script>
<style scoped>
.webhost{margin:1.5rem auto;}
.myfont1{
    font-size:1.5rem;
    color:#000;
}
  img {
      width: 90%;
      margin:0 auto;
      }
      div.stitle{
        display:flex;
        justify-content:space-between;
        width:90%;
        margin:2% auto;
        color:#333;
      }
      div.d2{
        font-size:10px;
      }
      div.mimg{
        display:flex;
        width:90%;
        margin:0 auto;
      }
      div.mimg img{
        width:25%;
        height:25%;
      }
</style>   
