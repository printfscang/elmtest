const Router = require('koa-router');
const api = require('../api');
const router = new Router();
router
  .get('/all', async (ctx, next) => {
    await api.getFoodsAll().then((res) => {
      console.log('获取成功');
      console.log(res);
      ctx.body = {
        status: true,
        data: res
      }
    })


  })
  .get('/test', async (ctx, next) => {
    ctx.body = 'hello foods'
  })
  .get('/food', async (ctx, next) => {
    await api.getFoodByfoodid(ctx.query.foodid).then(res => {
      console.log(res);
      ctx.body = {
        status: false,
        data: res
      }
    })
  })



module.exports = router;
