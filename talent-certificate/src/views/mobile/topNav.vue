<template>
  <div class="top-nav">
    <div class="background-text">
      {{ backgroundText }}
    </div>
    <div class="main-title">{{ mainTitle }}</div>
    <div class="center-button">
      <div class="operate-item" @click="signUpClick">
        <div class="operate-item-text">
          <span style="margin-left: 1.25rem"
            >我要报名<i class="operate-item-text-icon">→</i></span
          >
        </div>
      </div>
      <div
        class="operate-item"
        style="margin-left: 0.9375rem"
        @click="queryClick"
      >
        <div class="operate-item-text">
          <span style="margin-left: 1.25rem"
            >证书查询<i class="operate-item-text-icon">→</i></span
          >
        </div>
      </div>
    </div>
    <div class="img-bottom">
      <img src="../../assets/images/mobile/illustration.svg" alt="" />
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
  name: "topNav",
  data() {
    return {
      backgroundText: "CERTIFICATION",
      mainTitle: "人才评定",
    };
  },
  methods: {
    signUpClick() {
      this.$router.push("/signUp");
    },
    queryClick() {
      this.$router.push("/query");
    },
  },
};
</script>

<style lang="scss" scoped>
.top-nav {
  position: relative;
  width: 100%;
  height: 13.25rem;
  background-image: url("../../assets/images/mobile/background.svg");
  background-size: cover;
  .background-text {
    opacity: 0.14;
    font-size: 1.25rem;
    color: #ffffff;
    line-height: 1.75rem;
    font-weight: 400;
    padding-top: 0.75rem;
    text-align: center;
  }
  .main-title {
    font-size: 1.25rem;
    color: #ffffff;
    line-height: 1.75rem;
    font-weight: 400;
    text-align: center;
    margin-top: -0.8125rem;
  }
  .center-button {
    display: flex;
    justify-content: center;
    margin-top: 1.1875rem;
    .operate-item {
      border: 0.0625rem solid #ffffff;
      width: 7.5rem;
      height: 2.5rem;
      cursor: pointer;
      .operate-item-text {
        display: flex;
        font-size: 0.875rem;
        color: #ffffff;
        font-weight: 400;
        line-height: 2.5rem;
        text-align: center;
        width: 100%;
        height: 100%;
        .operate-item-text-icon {
          padding-left: 0.5rem;
        }
      }
    }
  }
  .img-bottom {
    position: absolute;
    bottom: -0.3125rem;
    left: 50%;
    transform: translate(-50%);
    img {
      width: 11.5rem;
      height: 4.375rem;
    }
  }
}
</style>
