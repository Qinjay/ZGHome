<template>
    <div class="my-f0">
            <div class="myload">
                <div class="myloadLeft">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-weizhi"></use>
                    </svg><span>武汉</span>
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xia"></use>
                    </svg>
                </div>
                <div class="myloadRight">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-wodeweizhi"></use>
                    </svg> 
                    <span>我的位置</span>
                </div>
            </div>
            <div class="mydate">
                <div class="mydateLeft">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-riqi"></use>
                    </svg>
                    <div>
                        <p><span>6月3日</span> <span>今天入住</span></p>
                        <p><span>6月4日</span> <span>明天离开</span> <span class="num">共1晚</span></p>
                    </div>
                </div>
                <div class="mydatRight">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xia"></use>
                    </svg>
                </div>
            </div>
            <div class="mysel">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-fangdajing"></use>
                </svg>
                <input type="text" placeholder="位置/地标/房源标题">
                <div class="myselRight">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xia"></use>
                    </svg>
                </div>
            </div>
             <mt-button size="large">查找民宿</mt-button>
        </div>
</template>
<script src="../../../font/iconfont.js"></script>



<style scoped>
.icon {
  width: 1em;
  height: 1em;
  vertical-align: -0.15em;
  fill: currentColor;
  overflow: hidden;
}

.myload,.mydate,.mysel{
   width:100%;height:3rem;
   padding:0.5rem;
   border-bottom:0.3px solid #ebebeb;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background:#fff
}
.myloadLeft,.myloadRight,.mydateLeft{
   display: flex;
    justify-content: space-between;
    align-items: center;
}
.myloadLeft>span,.myloadRight>span{margin:0 0.5rem}
.myloadRight>span{font-size:0.8rem}
.mydateLeft>div>p{
    margin:0 0.5rem;
    font-size:0.8rem;
    line-height:1rem;
    color:#8f8f94;
    }
.num{margin:0.5rem}
.mydatRight,.myselRight{
    transform:rotate(270deg);
}
.mysel{ 
    border-bottom-left-radius:5px;
    border-bottom-right-radius: 5px;
    overflow: hidden;
    }
.mysel input{
    border:0;
    outline:0;
    margin:0;
    font-size:0.8rem;
    color:#8f8f94;
    }
.mint-button--default{
    background-image: linear-gradient(90deg, #FFDF62 100%, #FECD0F 0%);
    margin:0.5rem auto;
    }
    .my-f0{
        border-radius:5px;
        overflow: hidden;
        }
</style>
