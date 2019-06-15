const express=require("express")
const router=express.Router();

const pool=require("../pool")

//账号登录接口
router.post("/login",(req,res)=>{
    var phone=req.body.phone;
    var upwd=req.body.upwd;
    var sql="SELECT * FROM ms_user WHERE phone=? AND upwd=md5(?)";
    pool.query(sql,[phone,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send({code:-1,msg:"手机号或密码不正确！"});
        }else{ 
            res.send({code:1,msg:"登录成功"});
        }
    })
})



//注册接口
router.post("/reg",(req,res)=>{
    var phone=req.body.phone;
    var sql="SELECT * FROM ms_user WHERE phone=?";
    pool.query(sql,[phone],(err,result)=>{
        if(err) throw err;
        //console.log(result)
        if(result.length>0){
            res.send({code:-1,msg:"手机号已存在,请换一个手机号输入!"});
        }else{
            var sql1="INSERT INTO ms_user VALUES(null,?,md5(?),null,null,null)";
            pool.query(sql1,[req.body],(err,result)=>{
               if(err) throw err;
                if( result.affectedRows>0){
                    res.send({code:1,msg:"注册成功"});
                }
            })
        }
    })
})


module.exports=router;



