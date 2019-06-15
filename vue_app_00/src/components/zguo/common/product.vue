<template>
    <div class="container">
        <!-- <pro-title></pro-title> -->
        <prof0></prof0>
        <prof1></prof1>
        <pro-lunbo></pro-lunbo> 
        <compose></compose><!--今夜特价-->
        <pro-webhost></pro-webhost>  <!-- 网红民宿-->
        <pro-brandhome></pro-brandhome><!--品牌民宿-->
        <pro-homelist></pro-homelist><!--民宿清单-->
        <pro-homestyle></pro-homestyle><!--主体精选-->
        <pro-hosthouse></pro-hosthouse><!--热门入住地-->
        <promis></promis>
       <pro-hostwell></pro-hostwell><!--美宿精选-->

    </div>
</template>
<script>
// import proTitle from "./pro_title.vue";
import prof0 from "./prof0.vue";
import prof1 from "./prof1.vue";
import proLunbo from "./pro_lunbo.vue";
import proWebhost from "./pro_webhost.vue";
import compose from "./compose.vue";
import proBrandhome from "./pro_brandhome.vue";
import proHomelist from "./pro_homelist.vue";
import proHomestyle from "./pro_homestyle.vue";
import proHosthouse from "./pro_hosthouse.vue";
import promis from "./promis.vue"
import proHostwell from "./pro_hostwell.vue";
export default {
    data(){
        return{
            
        }
    },
components:{prof0,prof1,proLunbo,proWebhost,compose,proBrandhome,proHomelist,proHomestyle,proHosthouse,promis,proHostwell},
}
</script>

<style scoped>
.container{
    width:95%;
    margin:1rem auto;
    padding:0.5rem;

    }
</style>
