<template>
  <div class="process-bar">
    <div class="box-line">
      <img class="gif" src="../../assets/images/nav.gif" alt="" />
      <img class="line" src="../../assets/images/line.png" alt="" />
    </div>
    <div class="nav-text">
      <div
        class="nav-container"
        v-for="(item, index) in processData"
        :key="item.id"
        @click="doSomething(index)"
      >
        <div class="outside">
          <div
            :class="{
              inside: true,
              activeInside: index === flagIndex,
            }"
          ></div>
        </div>
        <div class="nav-name">{{ item.name }}</div>
      </div>
    </div>
  </div>
</template>

<script>
/**
 * @Author: zhshaof@isoftstone.com
 * @Version: 1.1
 * Company: 软通动力
 */
export default {
  name: "progressBar",
  data() {
    return {
      flagIndex: 0,
      isActive: false,
      processData: [
        { id: "01", name: "活动介绍" },
        { id: "02", name: "申请步骤" },
        { id: "03", name: "实习任务" },
        { id: "04", name: "激励规则" },
        { id: "05", name: "实习规则" },
        { id: "06", name: "合作伙伴" },
      ],
    };
  },
  methods: {
    doSomething(index) {
      this.flagIndex = index;
    },
  },
};
</script>

<style lang="scss" scoped>
.process-bar {
  max-width: 1920px;
  margin: 0 auto;
  padding-bottom: 200px;
  top: 80px;
  right: 100px;
  position: fixed;
  cursor: pointer;
  z-index: 1000;
  display: block;
  .box-line {
    width: 70px;
    margin-left: -26px;
    .gif {
      width: 70px;
      height: 70px;
      margin: 0 auto -30px;
      position: relative;
      z-index: 20;
    }
    .line {
      display: block;
      width: 2px;
      margin: 0 auto;
    }
  }
  .nav-text {
    margin-top: -425px;
    position: relative;
    .nav-container {
      margin: 30px 0;
      .outside {
        display: inline-block;
        border-radius: 50%;
        width: 18px;
        position: relative;
        background: #fff;
        height: 18px;
        border: 1px solid #979797;
        .inside {
          background-color: #d8d8d8;
          width: 14px;
          height: 14px;
          border-radius: 50%;
          position: absolute;
          top: 50%;
          left: 50%;
          margin-left: -7px;
          margin-top: -7px;
          transition: background-color 0.3s;
        }
        .activeInside {
          background-color: #002fa7;
        }
      }
      .nav-name {
        color: #002fa7;
        transition: color 0.3s;
        margin: -24px 0 0 50px;
      }
    }
  }
}
</style>
