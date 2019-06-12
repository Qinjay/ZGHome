<template>
    <div id="slider" class="slider">
      <img v-for="(src,index) in imgSrc" :key="index" :src="src" style="width:330px;height:330px"
      @touchstart="touchstart"
      @touchmove="touchmove"/>
</div>
</template>
<style scoped>
#slider{display:flex;}
</style>

<script>
export default {
    data () {
    return {
      imgSrc:[
        'ban1.jpg',
        'ban2.jpg',
        'ban3.jpg',
        'ban4.jpg',
        'ban5.jpg',
      ],
      startPointX: 0,
      changePointX: 0,
      showIndex: 0,
    }
  },
  methods:{
    show(index){
      this.changePointX=this.startPointX;
      let slider = document.getElementById('slider');
      slider.style.marginLeft=`-${330*index}px`;
    },
    touchstart(e){
      this.startPointX = e.changedTouches[0].pageX;
    },
    touchmove(e){
      if(this.startPointX==this.changePointX){
        return ;
      }
      let currPointX = e.changedTouches[0].pageX;
      let leftSlide = this.startPointX-currPointX;
      if(leftSlide>30&&this.showIndex<this.imgSrc.length-1){
        this.show(++this.showIndex)
      }else if(leftSlide<-30&&this.showIndex>0){
        this.show(--this.showIndex)
      }
    }
}
}
</script>
