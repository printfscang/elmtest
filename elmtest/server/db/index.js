const mysql = require('mysql2');
const api = require('../api');

let pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'db_mysql'
});



let query = (sql) => {
  return new Promise((resolve, reject) => {
    pool.getConnection(function(err, conn) {
      // Do something with the connection
      conn.query(sql, (err, data) => {
        if (err) {
          console.log(err);
          resolve(err);
        } else {
          console.log(data);
          resolve(data);
        }
      });
      // Don't forget to release the connection when finished!
      pool.releaseConnection(conn);
    })
  })
}
module.exports = query;


// query("select * from t_seller where name='柳州螺蛳粉'");
// query("select * from t_food");
// query("SELECT * FROM t_user where username='覃慧红'");
// query("insert into t_user (username,password) values('lily',123456)");
// query("insert into t_seller (name,image) values('柳州螺蛳粉','http://www.baidu.com/a.png') ")
