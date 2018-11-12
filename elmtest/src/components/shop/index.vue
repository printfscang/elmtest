<template>
  <div id="shop">
    <topBar></topBar>
    <router-view></router-view>
  </div>
</template>
<script>
import topBar from '@/components/common/topBar'
export default {
  components: { topBar }
}

</script>
<style lang="scss" scoped>
#shop {
  width: 100vw;
  height: 100vh;
  overflow: auto;
}

</style>
