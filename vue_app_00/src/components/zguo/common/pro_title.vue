<template>
<div>
    <div class="pro-title">
        <div class="pro-title-left">
            <span>武汉</span> 
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-xia"></use>
            </svg>
        </div>
        <div class="pro-title-mid">
            <div>
                <p>住6-13</p>
                <p>离6-14</p>
            </div>
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-xia"></use>
            </svg>
        </div>
        <div class="pro-title-right">
            <input type="text" placeholder="位置/地标/房源标题">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-fangdajing"></use>
            </svg>
        </div>
    </div>
</div>
</template>
<style scoped>
.icon {
  width: 1em;
  height: 1em;
  vertical-align: -0.15em;
  fill: currentColor;
  overflow: hidden;
}
.pro-title{
    display: flex;
    width:100%;
    background:#fff;
}
.pro-title-mid{
    display: flex;
}
.pro-title-mid p{margin:0}
.pro-title-right>input{
    width:90%;
    font-size: 1rem;
    border: 0;
    outline: 0;
}
</style>

