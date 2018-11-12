<template>
  <div class="cart">
    <div class="top" v-show="isshow">
      <div class="container">
        <div>
          <span>购物车</span>
          <span @click="clearCart">清空</span>
        </div>
        <ul>
          <li v-for="(food,index) in this.$store.state.cart" :key="index">
            <span>{{food.name}}</span>
            <span>￥{{food.total}}</span>
            <span>
              <i  @click="subFood(food)">-</i>
            &nbsp;{{food.count}}&nbsp;
            <i @click="addFood(food)">+</i>
            </span>
          </li>
        </ul>
      </div>
      <div class="common"></div>
    </div>
    <div class="bottom">
      <div class="left"><img src="../../assets/cart.png" alt="" @click="isshow=!isshow"><span>&nbsp;¥{{this.$store.state.total}}&nbsp; 另需配送费&nbsp;4&nbsp;元</span></div>
      <div class="right" v-if="sortMoney() > 0">还差{{sortMoney()}}起送</div>
      <div class="right" v-else style="background-color:green;">
        <router-link to="/account">去结账</router-link>
      </div>
    </div>
    <div class="mask" v-show="isshow"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isshow: false,
      leastMoney: 40
    }
  },
  methods: {
    addFood: function(food) {
      this.$store.dispatch("addOrder", food);
    },
    subFood: function(food) {
      this.$store.dispatch("reduceOrder", food);
    },
    sortMoney() {
      let f = this.leastMoney - this.$store.state.total;
      return f;
    },
    clearCart() {
      this.$store.dispatch('clearOrder');
    }
  }
}

</script>
<style lang="scss" scoped>
ul,
li,
h1,
h2,
h3,
h4,
a {
  margin: 0;
  padding: 0;
  border: 0;
}


.cart {
  width: 100%;
  height: 48px;
  position: fixed;
  z-index: 50;
  bottom: 0;
  left: 0;
  right: 0;


  .top {
    position: absolute;
    width: 100%;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 2;

    .container {

      div {
        height: 2.6em;
        background-color: rgb(243, 245, 247);

        span:first-of-type {
          color: #000;
          font-size: 18px;
          margin-left: 20px;
        }

        span:last-child {
          float: right;
          color: rgb(0, 160, 220);
          margin-right: 20px;
        }
      }

      ul {

        li {
          background-color: #fff;
          display: flex;
          border-bottom: 1px solid #000;

          span {
            display: inline-block;
            width: 30%;
            line-height: 2.6em;
            justify-content: center;
            align-items: center;
            text-align: center;
          }

          &:last-child {
            border-bottom-color: transparent;
          }
        }
      }
    }

    .common {
      width: 100%;
      height: 50px;
      background-color: #fff;
    }

  }


  .bottom {
    position: relative;
    z-index: 3;
    width: 100vw;
    height: 48px;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;

    .left {
      width: 55%;
      line-height: 48px;
      color: #fff;
      background: rgb(20, 29, 39);
      border-top-left-radius: 24px;
      border-bottom-left-radius: 24px;

      position: relative;

      img {
        display: inline-block;
        width: 1.6rem;
        float: left;
        margin-left: 12px;
        margin-top: 10px;
      }

      span {
        overflow: hidden;
        font-size: 1rem;
      }
    }

    .right {
      width: 35%;
      font-size: 1rem;
      line-height: 48px;
      text-align: center;
      color: #fff;
      background: rgb(43, 52, 60);
      border-top-right-radius: 24px;
      border-bottom-right-radius: 24px;

      a {
        text-decoration: none;
        color: #fff;

      }

    }
  }

  .mask {
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background: #000;
    background: rgba(7, 17, 27, .6);
    z-index: 1;
  }
}

</style>
