<template>
  <div>
    <div class="top-logo">
      <div class="top-logo-img" @click="pageJump">
        <img src="../../assets/images/mobile/logo.svg" alt="" />
      </div>
    </div>
  </div>
</template>

<script>
/**
 * @Author: zhshaof@isoftstone.com
 * @Version: 1.2
 * Company: 软通动力
 */
export default {
  name: "topLogo",
  methods: {
    pageJump() {
      window.open("https://www.openeuler.org/zh/");
    },
  },
};
</script>

<style lang="scss" scoped>
.top-logo {
  width: 100%;
  height: 3rem;
  background: #ffffff;
  box-shadow: 0 0.06rem 0.019375rem 0 rgba(45, 47, 51, 0.1);
  .top-logo-img {
    width: 100%;
    height: 3rem;
    display: flex;
    justify-content: center;
    align-items: center;
    img {
      width: 4.25rem;
      height: 1.75rem;
    }
  }
}
</style>
