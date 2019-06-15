const express=require("express")
const router=express.Router();

const pool=require("../pool")

//首页房源住宿接口 美宿精选
router.get('/hostwell',function(req,res){
    //console.log(111)
    var sql=`SELECT * FROM ms_house WHERE hid<7`;
    pool.query(sql,function(err,result){
    if(err) throw err;
        res.send( result );
         //console.log(result);
    })
})

//首页轮播图房源住宿接口
router.get('/carousel',function(req,res){
    var sql=`SELECT * FROM ms_house WHERE hid<6`;
    pool.query(sql,function(err,result){
    if(err) throw err;
        res.send( result );
         //console.log(result);
    })
})



module.exports=router;