var Router = require('koa-router');
var router = new Router();
const user = require('./user');
const seller = require('./seller');
const upload = require('./upload');
const goods = require('./goods');
const foods = require('./foods');
const rating = require('./rating');


module.exports = function(app) {
  //路由表,调用路由中间件
  app.use(router.routes()).use(router.allowedMethods());


  router.use('/api/user', user.routes(), user.allowedMethods());
  router.use('/api/seller', seller.routes(), seller.allowedMethods());
  router.use('/api/upload', upload.routes(), upload.allowedMethods());
  router.use('/api/goods', goods.routes(), goods.allowedMethods());
  router.use('/api/foods', foods.routes(), foods.allowedMethods());
  router.use('/api', rating.routes(), rating.allowedMethods());


}
