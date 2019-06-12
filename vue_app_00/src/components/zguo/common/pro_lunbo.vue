<template>
  <div class="lunbo">
    <Swiper ref="swiper" v-if="list.length > 0" :autoPlay='false' :showIndicator='false'>
      <Slide @click="clickMe" v-for="(n,key) in list" :key="key">
        <img :src="n.img"/>
      </Slide>
    </Swiper>
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
      ]
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
.lunbo{margin:1.5rem auto;}
  img {
      width: 90%;
      margin:0 auto;
  }
</style>   

