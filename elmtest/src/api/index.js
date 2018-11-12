const axios = require('axios');


axios.defaults.baseURL = 'http://39.108.91.237:3000/api';
// axios.defaults.baseURL = 'http://localhost:3000/api';
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';

export default {
  //用户登陆
  userLogin(user) {
    return axios.post('/user/login', `loginName=${user.loginName}&loginPwd=${user.loginPwd}`);
  },
  //商家基本信息
  getSellerInfo() {
    return axios.get('/seller/info');
  },
  //获取商家全景图等信息
  getSellerPic() {
    return axios.get('/seller/pic');
  },
  getSellerBasic() {
    return axios.get('/seller/basic');
  },
  getSellerSupport() {
    return axios.get('/seller/support');
  },
  //获取订单
  getOrders(orderType) {
    return axios.get('user/order?type=' + orderType);
  },
  //确认收货
  confirmOrder(orderId) {
    return axios.get('user/confirm?orderId=' + orderId);
  },
  //测试
  uploadImg(uploadinfo) {
    return axios.post('/upload', uploadinfo);

  },
  //获取商品类型
  getGoodsType() {
    return axios.get('/goods/all');
  },
  //获取所有食品
  getFoodsAll() {
    return axios.get('/foods/all');
  },
  //根据foodId食品id获取指定食品的全部信息
  getFoodById(foodid) {
    return axios.get('/foods/food?foodid=' + foodid);
  },
  //获取给商家的评价等级分数
  getRatings() {
    return axios.get('/rating');
  },
  //获取用户信息
  getUser() {
    return axios.get('/user/userinfos');
  },
  //提交订单
  submitOrder(order) {
    return axios.get('user/submit?order=' + order);
  }

}
