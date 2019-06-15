<template>
    <div>
        <mt-swipe :auto="2500">
            <mt-swipe-item>1
                <div class="divImg">
                    <img src="ban1.jpg" alt="">
                </div> 
            </mt-swipe-item>
            <mt-swipe-item>2
               <div class="divImg">
                    <img src="ban1.jpg" alt="">
                </div> 
            </mt-swipe-item>
            <mt-swipe-item>3
                <div class="divImg">
                    <img src="ban1.jpg" alt="">
                </div> 
            </mt-swipe-item>
        </mt-swipe> 
        <p>4/4</p>
    </div>
</template>
 <script>
 export default {
     data(){return{}}
 }
 </script>
 <style>
    .divImg{
        width:100%;
        height:5rem;
    }
    .divImg>img{
        width:100%;
        height:100%;
    }
 </style>
 
 