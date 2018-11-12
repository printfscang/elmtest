const query = require('../db');
let status = {
  userId: 0, //当前登录用户ID
  sellerId: 0, //当前访问的商家ID
}
module.exports = {
  //用户登陆校验
  userLogin: function(username) {
    return query(`select * from t_user where username="${username}"`);
  },
  //获取商家基本信息
  getSellerInfo: function() {
    return query('select * from t_seller');
  },
  //获取商家全景图等信息
  getSellerPic() {
    return query('select * from t_sellerpics');
  },
  //获取商家信息，比如营业时间等
  getSellerBasic() {
    return query('select * from t_sellerinfos');
  },
  getSellerSupport() {
    return query('select * from t_sellersupports');
  },
  //获取用户订单信息
  getUserOrders: function(type) {
    let sql;
    if (type === '0') {
      sql = `SELECT * FROM t_orders WHERE userId = ${status.userId} ORDER BY orderTime DESC`;
    } else {
      sql = `SELECT * FROM t_orders WHERE orderType = ${type} AND userId = ${status.userId} ORDER BY orderTime DESC`;
    }
    return query(sql);
  },
  //用户确认收货
  userConfirmOrder: function(orderId) {
    return query(`UPDATE orders SET orderType = 2 WHERE orderId = ${orderId}`);
  },
  //插入图片
  setSellerSupport() {
    return query("insert into t_seller (name,image) values('柳州螺蛳粉','http://www.baidu.com/a.png') ")
  },
  getGoodsType() {
    return query("select * from t_foodtype");
  },
  //获取全部食品
  getFoodsAll() {
    return query("select * from t_food");
  },
  //根据指定fTypeId获取该食品的全部信息
  getFood(foodid) {
    return query(`select * from t_food where fTypeId=${foodid}`);
  },
  //根据foodid获取食品的信息
  getFoodByfoodid(foodid) {
    return query(`select * from t_food where foodId=${foodid}`);
  },
  //获取商家得到的评价等级信息
  getRatings() {
    return query('select * from t_seller');
  },
  //获取用户信息
  getUser() {
    return query('select * from t_userinfos');
  },
  //用户下单
  userSubmitOrder: function(order) {
    return query(`INSERT INTO t_orders(userId,sellerId,orderTime,price,orderType) VALUES(${status.userId},${status.sellerId},${order.orderTime},${order.price},1);`);
  }
}
