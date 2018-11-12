const Router = require('koa-router');
const api = require('../api/index');


const router = new Router();

router
  .get('/info', async (ctx, next) => {
    console.log('用户基本信息接口访问成功');
    await api.getSellerInfo().then((res) => {
      let info = res[0]
      ctx.body = {
        status: false,
        data: info
      };
    })

  })
  .get('/pic', async (ctx, next) => {
    await api.getSellerPic().then(res => {
      console.log(res);
      ctx.body = res;
    })
  })
  .get('/basic', async (ctx, next) => {
    await api.getSellerBasic().then(res => {
      ctx.body = res;
    })
  })
  .get('/support', async (ctx, next) => {
    await api.getSellerSupport().then(res => {
      ctx.body = res;
    })
  })



module.exports = router
