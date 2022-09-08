<template>
  <div class="rzCombine">
    <div
      class="combine-container"
      v-for="item in partnerImg"
      :key="item.id"
      @click="itemClicked(item.id)"
    >
      <img class="combine-img" :src="item.src" alt="partnerImg" />
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
        { id: "02", src: require("../../assets/images/huawei.png") },
        { id: "03", src: require("../../assets/images/zsoft.png") },
        { id: "04", src: require("../../assets/images/company.svg") },
        { id: "05", src: require("../../assets/images/company.svg") },
        { id: "06", src: require("../../assets/images/company.svg") },
        { id: "07", src: require("../../assets/images/company.svg") },
        { id: "08", src: require("../../assets/images/company.svg") },
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
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.rzCombine {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
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
  }
}
@media only screen and (min-width: 724px) and (max-width: 1500px) {
  .rzCombine {
    display: flex;
    flex-wrap: wrap;
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
    }
  }
}
</style>
