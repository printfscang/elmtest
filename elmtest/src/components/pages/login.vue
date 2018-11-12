<template>
  <div id="login">
    <h1>饿了么</h1>
    <h3>饿了就上饿了么！</h3>
    <div class="form" ref="form">
      <div class="user">
        <input type="text" v-model="user.loginName" placeholder="username" />
      </div>
      <div class="pwd">
        <input type="password" v-model="user.loginPwd" placeholder="password" />
      </div>
      <div class="login" @click="Login"></div>
    </div>
  </div>
</template>
<script>
import qs from 'qs'
export default {
  data() {
    return {
      user: {
        loginName: 'admin',
        loginPwd: 1111
      }
    }
  },
  methods: {
    Login: function() {
      this.$http.userLogin(this.user)
        .then((res) => {
          if (res.data.status) {
            this.$message({
              message: res.data.data,
              type: 'success'
            });
            this.$router.push('/shop');
          } else {
            this.$message.error(res.data.data)
          }
        })
        .catch(err => {
          console.log(err);
        });
    }
  }
}

</script>
<style lang="scss" scoped>
#login {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 100vw;
  height: 100vh;
  background: linear-gradient(rgb(54, 151, 253), rgb(0, 160, 220));
  text-align: center;

  input {
    margin: 0;
    padding-left: 50px;
    border: 0;
    display: inline-block;
    width: 36vw;
    height: 32px;
    border-radius: 16px;
    outline: 0 none;
  }

  input:selected {
    border-shadow: 0 0 3px yellow;
  }

  h1,
  h3 {
    color: #fff;
  }

  .form {
    display: inline-block;
    position: relative;
    width: 36vw;
    height: auto;
    text-align: center;

    .user:before {
      position: absolute;
      left: 14px;
      content: url(../../assets/usr.png);
      margin-top: 8px;
      padding-right: 8px;
      border-right: 1px solid #000;
    }

    .pwd {
      margin-top: 10px;

    }

    .pwd:before {
      position: absolute;
      left: 14px;
      content: url(../../assets/pwd.png);
      margin-top: 8px;
      padding-right: 8px;
      border-right: 1px solid #000;
    }

    .login {
      display: inline-block;
      margin-top: 10px;
      width: 50px;
      height: 50px;
      border-radius: 50%;
      background-color: rgb(128, 136, 154);
      position: relative;
      // border: 1px solid #fff;
    }

    .login:before {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      width: 0;
      height: 0;
      border: 6px solid #000;
      bottom: 0;
      margin: auto;
      content: '';
      transform: rotateZ(45deg);
      border-left-color: transparent;
      border-bottom-color: transparent;
    }

    .login:after {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      width: 10px;
      height: 5px;
      bottom: 0;
      margin: auto;
      content: '';
      background-color: #000
    }
  }

}

</style>
