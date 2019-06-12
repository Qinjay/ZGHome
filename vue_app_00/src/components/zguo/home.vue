<template>
 
   <div class="page-tabbar">  <!-- 溢出隐藏 -->
        <div class="page-wrap">  <!--滚动条 -->
            <!-- <title-bar></title-bar> -->
            <!-- 面板内容 -->
            <mt-tab-container v-model="active" >
                 <mt-tab-container-item id="product">
                    <product></product>
                </mt-tab-container-item>
            </mt-tab-container>
        </div>
    </div>
</template>
<script>
import product from "./common/product.vue";
export default {
    data(){
        return{
            active:"product",
        }
        },
    components:{product}
};

</script>
<style scoped>
    *{margin:0;padding:0;}
    .page-tabbar{overflow: hidden;}
    .page-wrap{
        overflow:auto;
        padding-bottom: 46px;
    }
</style>
