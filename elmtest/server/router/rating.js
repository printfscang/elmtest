const Router = require('koa-router');
const api = require('../api');
const router = new Router();

router
  .get('/rating', async (ctx, next) => {

    await api.getRatings().then(res => {

      ctx.body = {
        status: true,
        data: res
      }
    })

  })

module.exports = router;
