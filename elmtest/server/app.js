const Koa = require('koa');
const cors = require('koa2-cors');
const bodyParser = require('koa-bodyparser');

const routes = require('./router');

const app = new Koa();


//跨域
app.use(cors({
  origin: function(ctx) {
    return "*"; // 允许来自所有域名请求
  },
  exposeHeaders: ['WWW-Authenticate', 'Server-Authorization'],
  maxAge: 5,
  credentials: true,
  allowMethods: ['GET', 'POST', 'DELETE'],
  allowHeaders: ['Content-Type', 'Authorization', 'Accept'],
}));

//post解析
app.use(bodyParser());

routes(app);

app.listen(3000, () => {
  console.log('server started');
});
