const Router = require('koa-router');
const api = require('../api');

const router = new Router();
router
  .get('/all', async (ctx, next) => {
    let goods;
    await api.getGoodsType()
      .then((res) => {
        goods = res;
      })
      .catch(err => {
        ctx.body = {
          status: false
        }
      })
    for (good of goods) {
      await api.getFood(good.foodid)
        .then(res => {
          console.log(res);
          good.foods = res;
        }).catch(err => {
          ctx.body = {
            'status': false
          };
        });
    }
    ctx.body = {
      'status': true,
      'data': goods
    };
  })

module.exports = router;
