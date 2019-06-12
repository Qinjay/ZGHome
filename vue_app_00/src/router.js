import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import zg from "./components/zguo/home.vue"

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/zg',component:zg},
  
   

  ]
})
