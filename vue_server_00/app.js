//1:引入模块
const express=require("express");
const bodyParser = require('body-parser');
//const cors=require("cors");
const session=require("express-session");

//引入路由模块
const user=require("./routes/user.js");
const index=require("./routes/index.js");
const details=require("./routes/details.js");

//3:创建express对象
var server=express();
server.listen(3000);


//4.指定静态目录
server.use(express.static("public"));

//使用body-parser中间件
server.use(bodyParser.urlencoded({extended:false}));


//5:处理跨域请求
const cors = require("cors");
server.use(cors({
  origin:["http://127.0.0.1:8080",
  "http://localhost:8080"],
  credentials:true
}));

//6:添加session功能
server.use(session({
    secret:"128位字符串",
    resave:true,
    saveUninitialized:true
}));


//使用路由器来管理路由
server.use("/user",user);
server.use("/index",index);
server.use("/details",details);



