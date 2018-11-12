<template>
  <div id="topbar">
    <div class="sellerinfo" ref="sellerinfo">
      <img :src="seller.avatar" alt="" width="65" height="65" style="display: inline-block;margin:15px;border-radius:10px;" >
      <div style="margin-top:15px;">
        <div style="font-size:1em;">{{seller.name}}</div>
        <div style="font-size: 0.6em;">{{seller.description}}/{{seller.deliveryTime}}分钟送达</div>
        <div style="font-size: 0.6em;">在线支付满28减5</div>
      </div>
      <div style="margin:50px 0 0 50px;border-radius:5px;background-color: rgb(50,47,42);opacity: 0.7;display: inline-block;height:20px;color:#fff;font-size: 0.7em;">5个活动>> </div>
    </div>
    <div class="radio">
      <div style="font-size: 0.7em;"><img src="../../assets/radio.png"  alt="">{{seller.bulletin
        }}</div><span> >> </span>
      </div>
      <div class="banner">
        <router-link tag="a" to="/shop/order">点菜</router-link>
        <router-link tag="a" to="/shop/comment">评价</router-link>
        <router-link tag="a" to="/shop/merchant">商家</router-link>
      </div>
      <div class="user" @click="goBack"><img src="../../assets/user.png" width="24" alt=""></div>
      </div>
</template>
<script>
export default {
  data() {
    return {
      seller: {
        supports: [{}]

      },
      isshow: false
    }
  },
  created: function() {
    this.$http.getSellerInfo().then((res) => {
      this.seller = res.data.data;
    })
  },

  methods: {
    goBack() {
      this.$router.push('/user');
    },
    shown() {
      this.$refs.show.style.display = 'block';
    }
  }

}

</script>
<style lang="scss">
#topbar {
  width: 100%;
  height: 22vh;
  z-index: 50;
  background-color: rgb(60, 63, 67);
  opacity: 0.5;

  .sellerinfo {
    display: flex;
    flex-direction: row;
    vertical-align: middle;
    height: 62%;
    padding-left: 20px;
    color: #fff;
    overflow: hidden;
  }

  .user {
    position: absolute;
    top: 10px;
    right: 10px;
  }

  .radio {
    height: 16%;
    background-color: #000;
    overflow: hidden;

    div {
      width: 30%;
      color: #fff;
      float: left;
      text-overflow: ellipsis;
      white-space: nowrap;
      overflow: hidden;
    }

    span {
      margin-left: 10px;
      color: #fff;
    }

  }

  .banner {
    height: 22%;
    background-color: #fff;
    border-bottom: 1px solid #000;
    display: flex;

    a {
      text-decoration: none;
      display: inline-block;
      width: 100px;
      height: auto;
      align-items: center;
      color: #000;
      font-size: 1.2em;
    }

  }





}

</style>
