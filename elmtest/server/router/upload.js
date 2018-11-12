const Router = require('koa-router');
const router = new Router();


router
  .post('/', (ctx, next) => {
    let info = ctx.request.body;
    console.log('请求的图片信息是：', info);
    ctx.body = {
      status: false,
      data: info
    }
  })


module.exports = router
