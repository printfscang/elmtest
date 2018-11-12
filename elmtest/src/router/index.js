import Vue from 'vue'
import Router from 'vue-router'
import Login from '@/components/pages/login'
import Shop from '@/components/shop/index'
import Order from '@/components/pages/order'
import Comment from '@/components/pages/comment'
import Merchant from '@/components/pages/merchant'
import Detail from '@/components/shop/details'
import User from '@/components/pages/user'
import Account from '@/components/pages/account'

Vue.use(Router)

export default new Router({
  routes: [{
    path: '/',
    redirect: '/login'
  }, {
    path: '/account',
    component: Account
  }, {
    path: '/detail',
    component: Detail

  }, {
    path: '/user',
    component: User
  }, {
    path: '/login',
    component: Login
  }, {
    path: '/shop',
    component: Shop,
    children: [{
      path: '/',
      redirect: 'order'
    }, {
      path: 'order',
      component: Order
    }, {
      path: 'comment',
      component: Comment
    }, {
      path: 'merchant',
      component: Merchant
    }]
  }]
})
