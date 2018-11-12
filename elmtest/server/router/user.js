var Router = require('koa-router');
const api = require('../api');
const qs = require('qs');

var router = new Router();

router
  .get('/res', async (ctx, next) => {
    console.log(1111);
    await api.userLogin().then((result) => {
      console.log(result);
      let info = result;

      ctx.body = info;
    });
  })
  .post('/login', async (ctx, next) => {
    console.log("请求成功");
    console.log(ctx.request.body);
    let user = ctx.request.body;
    await api.userLogin(user.loginName)
      .then((res) => {
        let info = res[0];
        console.log('查询的结果：' + info);
        if (info == undefined) {
          ctx.body = {
            status: false,
            data: '用户名不存在'
          }
        } else if (info.password == user.loginPwd) {
          ctx.body = {
            status: true,
            data: '登陆成功'
          }
        } else {
          ctx.body = {
            status: false,
            data: '密码错误'
          }
        }

      })
  })
  .get('/userinfos', async (ctx, next) => {
    await api.getUser().then(res => {
      console.log(res);
      ctx.body = {
        status: true,
        data: res
      }
    })
  })
  .get('/submit', async (ctx, next) => {
    let order = JSON.parse(ctx.query.order);
    let account = 0;

    //用户下单
    await api.userSubmitOrder(order)
      .then(res => {
        ctx.body = {
          'status': true,
          'data': '下单成功'
        };
      }).catch(err => {
        ctx.body = {
          'status': false,
          'data': '下单失败'
        };
      });
  })
  .get('/order', async (ctx) => {
    await api.getUserOrders(ctx.query.type)
      .then(res => {
        ctx.body = {
          'status': true,
          'data': res
        };
      }).catch(err => {
        ctx.body = {
          'status': false
        };
      });
  })
  .get('/confirm', async (ctx) => {
    await api.userConfirmOrder(ctx.query.orderId)
      .then(res => {
        ctx.body = {
          'status': true,
          'data': '已收货'
        };
      }).catch(err => {
        ctx.body = {
          'status': false,
          'data': '收货失败'
        };
      });
  })
module.exports = router;
