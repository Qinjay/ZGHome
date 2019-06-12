<template>
  <div class="photo">
    <div v-for="(n,k) in list1" :key="k">
       <img :src="n.img">
    </div>
    <ul>
      <li v-for="(m,key) in list2" :key="key">
        <img :src="m.img"> 
      </li> 
    </ul>
  </div>  
</template>
<script>
export default {
  data(){
     return {
    list1:[
       {img: 'img1.jpg' },
       {img: 'img2.jpg' }
       ],
    list2:[
       {img: 'img3.jpg' },
       {img: 'img4.jpg' }
       ],   
    }
  }
}
</script>
<style scoped>
div{
  width:90%;
  margin:0 auto;
}
div>img{
  float:left;
  width:50%;
}
 ul{
    list-style: none;
    margin:0;
    padding:0;
  } 
   ul li>img{
     width:22.5%;
   }
    li img:last-child{
     float:left;
   } 
 
</style>
