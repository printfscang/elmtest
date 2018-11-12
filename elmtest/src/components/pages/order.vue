<template>
  <div>
    <div id="shop">
      <div class="goodstype">
        <ul>
          <li v-for="(types,index) in goods" :key="index"><a :href="'#'+index">{{types.foodtype}}</a></li>
        </ul>
      </div>
      <div class="goods-list">
        <ul>
          <li v-for="(types,index) in goods" :key="index" :id="index">
            <h2>{{types.foodtype}}</h2>
            <ul>
              <router-link tag="li" v-for="(food,id) in types.foods" :key="id" :to="{path:'/detail',query:{name:food.foodId}}">
                <div class="img">
                  <img :src="food.image" alt="" width="60" height="60">
                  </div>
                  <div class="contxt">
                    <h3>{{food.name}}</h3>
                    <p>月售{{food.sellCount}}份 好评率{{food.rating}}%</p>
                    <span>¥{{food.price}}</span>
                  </div>
                  <div class="operate"><i class="reduce" style="display: block;"   @click.prevent="reduceCart(food)">➖</i>
                    <i class="add" :ref="food.foodId" @click.prevent="addCart(food)">➕</i></div>
              </router-link>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <Cart :myacc="account"></Cart>
  </div>
</template>
<script>
import Cart from '@/components/common/cart'
export default {
  data() {
    return {
      account: 48,
      goods: [],
      avatar: require('../../assets/logo.png'),
      foods: []
    }
  },
  components: { Cart },
  methods: {
    getGoods() {
      this.$http.getGoodsType().then((res) => {
        this.goods = res.data.data;
      })
    },
    getFoods() {
      this.$http.getFoodsAll().then((res) => {
        this.foods = res.data.data;
      })
    },
    addCart(food) {
      this.$refs[food.foodId][0].style.display = "block";
      this.$store.dispatch("addOrder", food);
    },
    reduceCart(food) {
      this.$store.dispatch('reduceOrder', food);
    }
  },
  created: function() {
    this.getGoods();
    this.getFoods();
  }
}

</script>
<style lang="scss" scoped>
$border-color:yellowgreen;
$ul-bg:rgb(243, 245, 247);
$li-bt:rgb(204, 204, 204);

@mixin reset {
  margin: 0;
  padding: 0;
  border: 0;
}

#shop {
  overflow: auto;

  ul,
  li {
    list-style: none;
    @include reset;
  }

  a {
    text-decoration: none;
    color: #000;
    font-weight: 300;
  }

  .goodstype {
    width: 25%;
    height: 100%;
    background-color: rgb(243, 245, 247);
    float: left;

    ul {
      width: 100%;
      height: 100%;
      background-color: $ul-bg;
      box-sizing: border-box;
    }

    li {
      line-height: 3.6rem;
      border-bottom: 1px solid $li-bt;
      padding-left: 10px;

      &:hover {
        background-color: #fff;
      }
    }

  }

  .goods-list {
    box-sizing: border-box;
    height: 80vh;
    overflow: auto;


    li {
      h2 {
        margin: 0;
        padding: 0;
        background-color: $ul-bg;
        border-left: 2px solid $li-bt;
      }

      ul {
        background-color: #fff;

        li {
          position: relative;
          padding: 18px 0;
          margin: 0px 18px;
          height: 3.6rem;
          border-bottom: 1px solid #ccc;
          z-index: 2;

          div {
            float: left;
          }

          .reduce {
            display: none;
          }

          .img {
            img {
              width: 57px;
              height: 57px;
              border-radius: 5px;
              display: inline-block;
              margin-right: 0.8rem;
            }
          }

          .contxt {

            h3 {
              @include reset;
              font-size: 1rem;
            }

            p {
              @include reset;
              font-size: 0.8rem;
            }

            span {
              font-size: 0.8rem;
              color: red;
            }
          }

          .operate {
            position: absolute;
            left: 10rem;
            bottom: 1rem;

            i {
              float: left;
              text-align: bottom;
            }
          }

        }

      }
    }


  }

}

</style>
