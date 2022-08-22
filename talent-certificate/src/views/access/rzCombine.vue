<template>
  <div class="rzCombine">
    <div class="combine-container" v-for="item in partnerImg" :key="item.id">
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
        { id: "01", src: require("../../assets/images/company.svg") },
        { id: "02", src: require("../../assets/images/company.svg") },
        { id: "03", src: require("../../assets/images/company.svg") },
        { id: "04", src: require("../../assets/images/company.svg") },
        { id: "05", src: require("../../assets/images/company.svg") },
        { id: "06", src: require("../../assets/images/company.svg") },
        { id: "07", src: require("../../assets/images/company.svg") },
        { id: "08", src: require("../../assets/images/company.svg") },
      ],
    };
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
    .combine-img {
      justify-content: center;
      align-items: center;
      //cursor: pointer;
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
      .combine-img {
        justify-content: center;
        align-items: center;
        //cursor: pointer;
        width: 100%;
        height: 100%;
      }
    }
  }
}
</style>
