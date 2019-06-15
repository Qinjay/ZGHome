SET NAMES UTF8;
DROP DATABASE IF EXISTS ms;
CREATE DATABASE ms CHARSET=UTF8;
USE ms;

/**用户信息**/
CREATE TABLE ms_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  phone VARCHAR(32),
  upwd VARCHAR(32),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
INSERT INTO ms_user VALUES
(NULL,13012345678,md5("123456"),NULL,'lilei',1),
(NULL,13112345678,md5("123456"),NULL,'hmm',0),
(NULL,13212345678,md5("123456"),NULL,'dongdong',1);

/**民宿房源——首页**/
CREATE TABLE ms_house(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,                    #房东id
  title VARCHAR(128),         #主标题
  rent_way VARCHAR(128),      #出租方式
  isdiscounts BOOLEAN,        #是否优惠
  rent_price  INT,            #现出租价格
  original_cost INT,          #原出租价  当优惠时出现原始价格
  pic VARCHAR(128),           #md中图片路径
  href VARCHAR(128)           #进入详情页路径
);
INSERT INTO ms_house VALUES
(NULL,1,'浪漫满屋大床房    临黄鹤楼400米/昙华林500米/户部巷600米','整套·1居室 · 可住3人',0,128,NULL,'index/ms_house_1.jpg','detail?hid=1'),
(NULL,1,'武汉站/东湖风景区/欢乐谷/交通便利/豪华大床房','整套·1居室 · 可住2人',1,96,108,'index/ms_house_2.jpg','detail?hid=2'),
(NULL,2,'【依恋家】K11/光谷/纺大/民大舒适一居','整套·1居室 · 可住2人',1,115,138,'index/ms_house_3.jpg','detail?hid=3'),
(NULL,2,'江汉路江滩步行街Ins风独立公寓','整套·1居室 · 可住3人',1,124,139,'index/ms_house_4.jpg','detail?hid=4'),
(NULL,2,'《一见倾心》武汉站、高铁站，欢乐谷、东湖、汉街、仁和路地铁口，想看其他分店请点房东图像！','整套·1居室 · 可住2人',0,168,NULL,'index/ms_house_5.jpg','detail?hid=5'),
(NULL,3,'武汉天河机场2号线宋家岗地铁（朴物）直达汉口火车站/江汉路/光谷/投影大床','整套·1居室 · 可住3人',1,141,178,'index/ms_house_6.jpg','detail?hid=6');

/**民宿房源——详情**/
CREATE TABLE ms_details(
  did INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,                     #房东id
  hid INT,                     #房源id
  housing_merit	VARCHAR(128),  #房源优点标签
  floor_space VARCHAR(32),     #房源面积与出租方式
  guest_number VARCHAR(32),    #可入住人数与床的数量
  house_type VARCHAR(32),      #户型
  details_site VARCHAR(32),    #详细地址
      /**服务设施**/
  servefac_href VARCHAR(128),  #跳转服务设施页面
      /**入住服务**/
  isStayinallday BOOLEAN,      #是否24小时入住      
  isSelfcheckin BOOLEAN,       #是否自助入住
  isbreakfast  BOOLEAN,        #是否提供早餐
  isFreeparking BOOLEAN,       #是否免费停车          
  isBeddingchange BOOLEAN,     #是否床品每客更换     
  isTransfer BOOLEAN,          #是否接送机            
      /**基础设施**/
  isWifi BOOLEAN,              #是否有wifi         
  isWirednetwork BOOLEAN,      #是否有有线网络      
  isElevator BOOLEAN,          #是否有电梯
  isEntranceguard BOOLEAN,     #是否有门禁        
  isDesk BOOLEAN,              #是否有书桌        
  isBalcony BOOLEAN,           #是否有阳台           
  isTreadmill BOOLEAN,         #是否有跑步机        
  isPark BOOLEAN,              #是否有公园          
  isSaluhall BOOLEAN,          #是否有菜市场      
  isGamemachine BOOLEAN,       #是否有游戏机
  isPlayingcard BOOLEAN,       #是否有扑克牌
  isWerewolveskill BOOLEAN,    #是否有狼人杀      
  isMahjong BOOLEAN,           #是否有麻将
      /**特色设施**/
  isHeating BOOLEAN,           #是否有暖气         
  isParingspot BOOLEAN,        #是否有停车位       
  isDryer BOOLEAN,             #是否有烘干机        
  isBathtub BOOLEAN,           #是否有浴缸
  isOven BOOLEAN,              #是否有烤箱
      /**厨房设施**/
  isTableware BOOLEAN,         #是否有餐具
  isKitchenware BOOLEAN,       #是否有厨具
  isMicrowaveoven BOOLEAN,     #是否有微波炉
  isInductioncooker BOOLEAN,   #是否有电磁炉        
  isFlavour BOOLEAN,           #是否有调料
  isThermos BOOLEAN,           #是否有热水壶          
  isRedwine BOOLEAN,           #是否有红酒
  isBeer BOOLEAN,              #是否有啤酒
      /**洗浴设施**/
  isHotshower BOOLEAN,         #是否有热水淋浴      
  isToiletthings BOOLEAN,      #是否有牙具          
  isToiletsoap BOOLEAN,        #是否有香皂          
  isSlipper BOOLEAN,           #是否有拖鞋          
  isToiletpaper BOOLEAN,       #是否有手纸            
  isTowel BOOLEAN,             #是否有毛巾          
  isBathtowel BOOLEAN,         #是否有浴巾          
  isShowergel BOOLEAN,         #是否有沐浴露/洗发水    
      /**家电设施**/
  isTV BOOLEAN,                #是否有电视            
  isProjection BOOLEAN,        #是否有投影
  isAirconditioner BOOLEAN,    #是否有空调            
  isAircleaner BOOLEAN,        #是否有空气净化器
  iscomputer BOOLEAN,          #是否有电脑
  isWaterdispenser BOOLEAN,    #是否有饮水机          
  isWashingmachine BOOLEAN,    #是否有洗衣机          
  isElectrichairdrier BOOLEAN, #是否有电吹风          
  isRefrigerator BOOLEAN       #是否有冰箱            
);
INSERT INTO ms_details VALUES
(NULL,1,1,'<span class="affirm">立即确认</span><span class="merit">有停车位</span><span class="merit">朋友结伴</span><span class="merit">可带宠物</span>','20㎡/整套出租','3人/双人床*1','1室1卫','武汉武昌区粮道街109号白土塘小区5号','servefac?hid=1',1,0,0,1,1,1,1,1,0,1,1,1,1,1,1,0,0,1,0,1,1,1,0,0,0,0,0,1,0,1,0,0,1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1),
(NULL,1,2,'<span class="affirm">立即确认</span><span class="merit">有停车位</span><span class="merit">朋友结伴</span><span class="merit">可带宠物</span>','20㎡/整套出租','3人/双人床*1','1室1卫','武汉武昌区粮道街109号白土塘小区5号','servefac?hid=1',1,0,0,1,1,1,1,1,0,1,1,1,1,1,1,0,0,1,0,1,1,1,0,0,0,0,0,1,0,1,0,0,1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1),
(NULL,2,3,'<span class="affirm">立即确认</span><span class="merit">有停车位</span><span class="merit">朋友结伴</span><span class="merit">可带宠物</span>','20㎡/整套出租','3人/双人床*1','1室1卫','武汉武昌区粮道街109号白土塘小区5号','servefac?hid=1',1,0,0,1,1,1,1,1,0,1,1,1,1,1,1,0,0,1,0,1,1,1,0,0,0,0,0,1,0,1,0,0,1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1),
(NULL,2,4,'<span class="affirm">立即确认</span><span class="merit">有停车位</span><span class="merit">朋友结伴</span><span class="merit">可带宠物</span>','20㎡/整套出租','3人/双人床*1','1室1卫','武汉武昌区粮道街109号白土塘小区5号','servefac?hid=1',1,0,0,1,1,1,1,1,0,1,1,1,1,1,1,0,0,1,0,1,1,1,0,0,0,0,0,1,0,1,0,0,1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1),
(NULL,2,5,'<span class="affirm">立即确认</span><span class="merit">有停车位</span><span class="merit">朋友结伴</span><span class="merit">可带宠物</span>','20㎡/整套出租','3人/双人床*1','1室1卫','武汉武昌区粮道街109号白土塘小区5号','servefac?hid=1',1,0,0,1,1,1,1,1,0,1,1,1,1,1,1,0,0,1,0,1,1,1,0,0,0,0,0,1,0,1,0,0,1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1),
(NULL,3,6,'<span class="affirm">立即确认</span><span class="merit">有停车位</span><span class="merit">朋友结伴</span><span class="merit">可带宠物</span>','20㎡/整套出租','3人/双人床*1','1室1卫','武汉武昌区粮道街109号白土塘小区5号','servefac?hid=1',1,0,0,1,1,1,1,1,0,1,1,1,1,1,1,0,0,1,0,1,1,1,0,0,0,0,0,1,0,1,0,0,1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1);


     /**房东信息表**/
CREATE TABLE ms_landlord(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  landlord_name	VARCHAR(32),  #房东昵称
  isCertification BOOLEAN,    #是否实名认证  1->是 0->否
  landlord_msg 	VARCHAR(128), #房东信息 例:80后天蝎座
  landlord_self_intr VARCHAR(250),  #房东个人介绍
  Housing_int VARCHAR(250),         #房屋介绍  
  lan_remark VARCHAR(50),           #房东备注  
      /**房东要求**/
  isSmoking BOOLEAN,              #是否允许吸烟
  isSateforkids BOOLEAN,          #是否适合儿童
  isSateinfant BOOLEAN,           #是否适合婴幼儿
  isSateold BOOLEAN,              #是否适合老人
  isAllowedtocook BOOLEAN,        #是否允许做饭
  isAllowparty BOOLEAN,           #是否允许聚餐
  isPet BOOLEAN                  #是否允许携带宠物   
);
INSERT INTO ms_landlord VALUES
(NULL,'拾光民宿（黄鹤楼店）',1,'40后处女座',NULL,'离黄鹤楼400米，离户部巷600米，走路去昙华林，长江大桥7分钟就到了。我们更多的是想在这个城市，有一个地方，让有梦想的你们，放肆发呆，休憩，躲懒，看书，交友，分享快乐和倾诉烦恼！不管你是来自哪里…','因平台暂不支持线上押金，房东线下收取，敬请谅解',1,1,1,1,0,1,1),
(NULL,'武汉如家快捷公寓',1,'40后处女座',NULL,'离黄鹤楼400米，离户部巷600米，走路去昙华林，长江大桥7分钟就到了。我们更多的是想在这个城市，有一个地方，让有梦想的你们，放肆发呆，休憩，躲懒，看书，交友，分享快乐和倾诉烦恼！不管你是来自哪里…','因平台暂不支持线上押金，房东线下收取，敬请谅解',1,1,1,1,0,1,1),
(NULL,'武汉7天连锁酒店',1,'40后处女座',NULL,'离黄鹤楼400米，离户部巷600米，走路去昙华林，长江大桥7分钟就到了。我们更多的是想在这个城市，有一个地方，让有梦想的你们，放肆发呆，休憩，躲懒，看书，交友，分享快乐和倾诉烦恼！不管你是来自哪里…','因平台暂不支持线上押金，房东线下收取，敬请谅解',1,1,1,1,0,1,1);


/**详情轮播图片**/
CREATE TABLE ms_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  hid INT,		      #民宿房源编号
  p_pic VARCHAR(128)             #图片路径
);
INSERT INTO ms_pic VALUES
(NULL,1,'details/ms_house_1.jpg'),
(NULL,1,'details/ms_house_1_details_2.jpg'),
(NULL,1,'details/ms_house_1_details_3.jpg'),
(NULL,1,'details/ms_house_1_details_4.jpg'),
(NULL,1,'details/ms_house_1_details_5.jpg'),
(NULL,2,'details/ms_house_2.jpg'),
(NULL,2,'details/ms_house_1_details_2.jpg'),
(NULL,2,'details/ms_house_1_details_3.jpg'),
(NULL,2,'details/ms_house_1_details_4.jpg'),
(NULL,2,'details/ms_house_1_details_5.jpg'),
(NULL,3,'details/ms_house_3.jpg'),
(NULL,3,'details/ms_house_1_details_2.jpg'),
(NULL,3,'details/ms_house_1_details_3.jpg'),
(NULL,3,'details/ms_house_1_details_4.jpg'),
(NULL,3,'details/ms_house_1_details_5.jpg'),
(NULL,4,'details/ms_house_4.jpg'),
(NULL,4,'details/ms_house_1_details_2.jpg'),
(NULL,4,'details/ms_house_1_details_3.jpg'),
(NULL,4,'details/ms_house_1_details_4.jpg'),
(NULL,4,'details/ms_house_1_details_5.jpg'),
(NULL,5,'details/ms_house_5.jpg'),
(NULL,5,'details/ms_house_1_details_2.jpg'),
(NULL,5,'details/ms_house_1_details_3.jpg'),
(NULL,5,'details/ms_house_1_details_4.jpg'),
(NULL,5,'details/ms_house_1_details_5.jpg'),
(NULL,6,'details/ms_house_6.jpg'),
(NULL,6,'details/ms_house_1_details_2.jpg'),
(NULL,6,'details/ms_house_1_details_3.jpg'),
(NULL,6,'details/ms_house_1_details_4.jpg'),
(NULL,6,'details/ms_house_1_details_5.jpg');


/**订单、选购房屋、绑定用户和选中的民宿房源**/
CREATE TABLE ms_car(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,      #用户id
  hid INT      #房源id
);
INSERT INTO ms_car VALUES
(NULL,1,1);



