<template>
  <div class="rzCombine">
    <div
      class="combine-container"
      v-for="item in partnerImg"
      :key="item.id"
      @click="itemClicked(item.id)"
    >
      <img
        class="combine-img"
        :class="'image' + item.id"
        :src="item.src"
        alt="partnerImg"
      />
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
  name: "rzCombine",
  data() {
    return {
      partnerImg: [
        { id: "01", src: require("../../assets/images/issedu.png") },
        { id: "02", src: require("../../assets/images/huawei-old.png") },
        { id: "03", src: require("../../assets/images/zsoft-old.png") },
        { id: "04", src: require("../../assets/images/shenzhoushuma.png") },
        { id: "05", src: require("../../assets/images/shenzhouxinqiao.png") },
        { id: "06", src: require("../../assets/images/tongxintuanjian.png") },
        { id: "07", src: require("../../assets/images/jiangsurunhe.png") },
        { id: "08", src: require("../../assets/images/dongruanjituan.png") },
        { id: "09", src: require("../../assets/images/kepurui.png") },
        { id: "10", src: require("../../assets/images/hunanoulalogo.png") },
        { id: "11", src: require("../../assets/images/QSTLogo.png") },
      ],
    };
  },
  methods: {
    itemClicked(pId) {
      if (pId === "01") {
        window.open("https://www.issedu.com/", "_blank");
      } else if (pId === "02") {
        window.open("https://e.huawei.com/cn/talent/portal/#/", "_blank");
      } else if (pId === "03") {
        window.open("https://www.chinasofti.com/", "_blank");
      } else if (pId === "04") {
        window.open("https://www.digitalchina.com/", "_blank");
      } else if (pId === "05") {
        window.open("http://www.sino-bridge.com", "_blank");
      } else if (pId === "06") {
        window.open("https://www.uniontech.com/", "_blank");
      } else if (pId === "07") {
        window.open("https://www.hoperun.com/", "_blank");
      } else if (pId === "08") {
        window.open("https://www.neusoft.com/cn/", "_blank");
      } else if (pId === "09") {
        window.open("http://www.china-esp.com/", "_blank");
      } else if (pId === "10") {
        window.open("http://openeuler-hn.com/", "_blank");
      } else if (pId === "11") {
        window.open("https://itshixun.com/", "_blank");
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.rzCombine {
  display: flex;
  flex-wrap: wrap;
  justify-content: left;
  margin-bottom: 40px;
  .combine-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    border: 1px solid #e5e5e5;
    //width: 345px;
    width: 351px;
    height: 120px;
    margin: 0 -1px -1px 0;
    cursor: pointer;
    background: white;
    .combine-img {
      justify-content: center;
      align-items: center;
      width: 100%;
      height: 100%;
    }
    .image09,
    .image10,
    .image11 {
      width: 90%;
      height: 67%;
      padding: 20px;
    }
  }
}
@media only screen and (min-width: 724px) and (max-width: 1500px) {
  .rzCombine {
    display: grid;
    // flex-wrap: wrap;
    grid-template-columns: repeat(2, auto);
    justify-content: center;
    margin-bottom: 40px;
    max-width: 1034px;
    margin-left: auto;
    margin-right: auto;
    .combine-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      border: 1px solid #e5e5e5;
      width: 351px;
      height: 120px;
      margin: 0 -1px -1px 0;
      cursor: pointer;
      .combine-img {
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
      }
      .image09,
      .image10,
      .image11 {
        width: 90%;
        height: 67%;
        padding: 20px;
      }
    }
  }
}
</style>
