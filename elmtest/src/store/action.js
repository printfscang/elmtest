const actions = {
  addOrder(context, food) {

    let orders = context.state.cart;
    context.state.total += food.price;
    for (let i = 0; i < orders.length; i++) {
      //如果商品已经在订单中
      if (orders[i].foodId === food.foodId) {
        orders[i].count++;
        orders[i].total += food.price;
        return;
      }
    }
    //如果商品不在订单中
    food.count = 1;
    food.total = food.price;
    orders.push(food);
  },
  reduceOrder(context, food) {
    context.state.total -= food.price;
    let orders = context.state.cart;
    for (let i = 0; i < orders.length; i++) {
      //如果商品已经在订单中
      if (orders[i].foodId === food.foodId) {
        //购物车里就最后一件商品了
        if (orders[i].count === 1) {
          orders.splice(i, 1);
        } else {
          orders[i].count--;
          orders[i].total -= food.price;
        }
        return;
      }
    }
  },
  clearOrder(context) {
    context.state.cart = [];
    context.state.total = 0;
  },
  //改变登录状态
  changeLoginState(context) {
    context.state.isLogin = !context.state.isLogin;
  }
}

export default actions
