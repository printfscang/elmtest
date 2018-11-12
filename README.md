# elmtest
饿了么仿站

# 使用技术
1. 前端部分：vue2，vuex，axios，element-ui，webpack
2. 后端部分：koa2，mysql

# 安装与运行
1. 前端：
> 进入项目目录 `cd elmtest ` 
> 安装依赖 `npm install --production`
> 运行 `npm run dev`
2. 后端：
> `cd server`
> `npm install --production`
> `node app.js`
# 项目结构
```
|--build
|--config
|--server       //`后台`
|   |--api      //sql语句查询
|   |--db       //mysql2连接池方法连接数据库
|   |--router   //koa-router建立路由接口
|   |--app.js   //入口文件
|   |--package.json
|--src          //`前端`
|   |--api      //axios调用后端接口，返回数据
|   |--assets   //图片资源目录
|   |--components 
|   |--router
|   |--store    //vuex状态管理器
|   |--App.vue
|   |--main.js
|--static
|--db_mysql.sql
|--....
```
