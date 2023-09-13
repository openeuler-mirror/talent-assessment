<template>
  <div class="rz-partner">
    <div class="rz-partner-first-text">
      {{ firstText }}
    </div>
    <div class="rz-partner-second-text">
      {{ secondText }}
    </div>
    <div class="rz-partner-container">
      <div
        class="rz-partner-container-box"
        v-for="item in partnerImg"
        :key="item.id"
      >
        <div style="cursor: pointer" @click="imgClick(item.id)">
          <img :src="item.src" alt="partnerImg" />
        </div>
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
  name: "rzPartner",
  data() {
    return {
      firstText: "人才能力评定合作伙伴",
      secondText: "合作伙伴招募详细内容可联系oecxonline@openeuler.sh",
      partnerImg: [
        { id: "01", src: require("../../assets/images/mobile/rtdl.png") },
        { id: "02", src: require("../../assets/images/mobile/hw.png") },
        { id: "03", src: require("../../assets/images/mobile/zsoft.png") },
        { id: "04", src: require("../../assets/images/shenzhoushuma.png") },
        { id: "05", src: require("../../assets/images/shenzhouxinqiao.png") },
        { id: "06", src: require("../../assets/images/tongxintuanjian.png") },
        { id: "07", src: require("../../assets/images/jiangsurunhe.png") },
        { id: "08", src: require("../../assets/images/dongruanjituan.png") },
        // { id: "08", src: require("../../assets/images/company.svg") },
      ],
    };
  },
  methods: {
    imgClick(item) {
      if (item === "01") {
        window.open("https://www.issedu.com/");
      } else if (item === "02") {
        window.open("https://e.huawei.com/cn/talent/portal/#/");
      } else if (item === "03") {
        window.open("https://www.chinasofti.com/");
      } else if (item === "04") {
        window.open("https://www.digitalchina.com/", "_blank");
      } else if (item === "05") {
        window.open("http://www.sino-bridge.com", "_blank");
      } else if (item === "06") {
        window.open("https://www.uniontech.com/", "_blank");
      } else if (item === "07") {
        window.open("https://www.hoperun.com/", "_blank");
      } else if (item === "08") {
        window.open("https://www.neusoft.com/cn/", "_blank");
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.rz-partner {
  padding: 0 1rem;
  .rz-partner-first-text {
    margin-top: 1rem;
    font-size: 1rem;
    color: #000000;
    text-align: center;
    line-height: 1.5rem;
    //font-weight: 200;
    font-weight: 400;
  }
  .rz-partner-second-text {
    font-size: 0.75rem;
    color: #555555;
    text-align: center;
    line-height: 1.125rem;
    font-weight: 400;
    margin-top: 0.5rem;
    margin-bottom: 1rem;
  }
  .rz-partner-container {
    display: grid;
    column-gap: 0;
    row-gap: 0;
    grid-template-columns: repeat(2, minmax(5.125rem, 16.875rem));
    justify-content: center;
    margin-bottom: 2.5rem;
    .rz-partner-container-box {
      font-size: 1rem;
      min-height: 2.5rem;
      display: flex;
      margin: 0 -0.0625rem -0.0625rem 0;
      justify-content: center;
      align-items: center;
      border: 0.0625rem solid #e5e5e5;
      //background-color: #ffffff;
      max-height: 7.5rem;
      overflow: hidden;
      background: white;
      img {
        display: block;
        width: 100%;
        height: 100%;
        border: 0;
      }
    }
  }
}
</style>
