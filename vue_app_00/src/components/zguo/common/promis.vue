<template>
    <a class="promis">
        <div>
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-loufang"></use>
            </svg>
             <p>放心入住</p>
             <p>千万保障先行</p>
        </div>
        <div>
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-dibu-h"></use>
            </svg>
             <p>贴心客服</p>
             <p>7*24小时服务</p>
        </div>
        <div>
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-shenfenzheng"></use>
            </svg>
             <p>信用认证</p>
             <p>实名信用更放心</p>
        </div>
        <div>
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-iconfront-"></use>
            </svg>
             <p>安全无忧</p>
             <p>客房房东保险</p>
        </div>
    </a>
        

</template>
<style scoped>
.icon {
  width: 1.5em;
  height: 1.5em;
  vertical-align: -0.15em;
  fill: currentColor;
  overflow: hidden;
}
.promis{display: block;color:#8f8f94;}
.promis>div>p{
    font-size:0.8rem;
    color:#111;
    margin:0;
}
.promis>div>p+p{
    font-size:0.6rem;
    color:#8f8f94;
}
.promis{
    display:flex;
    justify-content:space-between;
   text-align: center;
   margin: 2rem auto;
    }
</style>
