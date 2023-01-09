<template>
  <div>
    <div class="page-header">
      <div class="page-header-logo">
        <img src="../../assets/images/logo.png" alt="" @click="pageJump" />
      </div>
    </div>
    <div class="page-main">
      <div class="page-main-title">我要报名</div>
      <div class="page-main-divider"></div>
      <div class="page-main-list">
        <div class="list-title">合作委托声明</div>
        <div class="list-content">
          为方便对参加openEuler社区人才评定学员进行评定考试，openEuler社区优选业界资深操作系统评定考试机构。openEuler社区已经对评定考试的合作伙伴做相关授权。
        </div>
      </div>
      <div class="page-main-list">
        <div class="list-title">报名入口</div>
        <div class="list-content">
          当前已经授权如下合作伙伴，选择任一合作伙伴即可跳转至评定考试报名页面：
        </div>
        <div class="list-img">
          <div
            class="list-img-box"
            v-for="item in partnerImg"
            :key="item.id"
            @click="itemClicked(item.id)"
          >
            <img class="list-img-item" :src="item.src" alt="partnerImg" />
          </div>
        </div>
      </div>
    </div>
    <page-footer></page-footer>
  </div>
</template>

<script>
/**
 * @Author: zhshaof@isoftstone.com
 * @Version: 1.1
 * Company: 软通动力
 */
import PageFooter from "./pageFooter";
export default {
  name: "signUp",
  components: {
    PageFooter,
  },
  data() {
    return {
      partnerImg: [
        { id: "01", src: require("../../assets/images/issedu-samll.png") },
        { id: "02", src: require("../../assets/images/huawei.png") },
        { id: "03", src: require("../../assets/images/zsoft.png") },
        { id: "04", src: require("../../assets/images/company.svg") },
      ],
    };
  },
  methods: {
    pageJump() {
      window.open("https://www.openeuler.org/zh/");
    },
    itemClicked(pId) {
      if (pId === "01") {
        window.open(
          "https://www.itongxue.net/itxcertificationdetails?id=26c81b6ed7f11be0b2491f9c58d8b22c",
          "_blank"
        );
        // window.open("https://www.issedu.com/", "_blank");
      } else if (pId === "02") {
        window.open(
          "https://e.huawei.com/cn/talent/#/cert/product-details?certifiedProductId=383&amp%3BauthenticationLevel=CTYPE_CARE_HCIA&amp%3BtechnicalField=PSC&amp%3Bversion=1.0",
          "_blank"
        );
      } else if (pId === "03") {
        window.open("https://www.chinasofti.com/", "_blank");
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.page-header {
  width: 100%;
  height: 80px;
  background: #ffffff;
  .page-header-logo {
    padding-left: 5px;
    height: 80px;
    max-width: 1416px;
    margin: 0 auto;
    img {
      height: 49px;
      margin: 16px 0;
      cursor: pointer;
    }
  }
}
.page-main {
  max-width: 1336px;
  margin: 40px auto;
  padding: 40px;
  background: #ffffff;
  box-shadow: 0 1px 5px 0 rgba(45, 47, 51, 0.1);
  .page-main-title {
    font-size: 36px;
    color: #000000;
    line-height: 48px;
    font-weight: 200;
  }
  .page-main-divider {
    background: #e5e5e5;
    height: 1px;
    margin: 40px 0;
  }
  .page-main-list {
    .list-title {
      font-size: 18px;
      color: #000000;
      text-align: left;
      line-height: 26px;
      font-weight: 500;
    }
    .list-content {
      font-size: 14px;
      color: #555555;
      text-align: left;
      line-height: 22px;
      font-weight: 400;
      padding: 20px 0 40px 0;
    }
    .list-img {
      display: flex;
      flex-wrap: wrap;
      justify-content: left;
      margin-bottom: 120px;
      .list-img-box {
        border: 1px solid #e5e5e5;
        width: 330px;
        height: 124px;
        margin: 0 -1px -1px 0;
        cursor: pointer;
        .list-img-item {
          justify-content: center;
          align-items: center;
          width: 100%;
          height: 100%;
        }
      }
    }
  }
}
@media only screen and (max-width: 1462px) {
  .page-header {
    width: 100%;
    height: 80px;
    background: #ffffff;
    .page-header-logo {
      padding-left: 16px;
      height: 80px;
      max-width: 1416px;
      margin: 0 auto;
      img {
        height: 49px;
        margin: 16px 0;
        cursor: pointer;
      }
    }
  }
  .page-main {
    max-width: 1336px;
    margin: 40px 16px;
    padding: 40px;
    background: #ffffff;
    box-shadow: 0 1px 5px 0 rgba(45, 47, 51, 0.1);
    .page-main-title {
      font-size: 36px;
      color: #000000;
      line-height: 48px;
      font-weight: 200;
    }
    .page-main-divider {
      background: #e5e5e5;
      height: 1px;
      margin: 40px 0;
    }
    .page-main-list {
      .list-title {
        font-size: 18px;
        color: #000000;
        text-align: left;
        line-height: 26px;
        font-weight: 500;
      }
      .list-content {
        font-size: 14px;
        color: #555555;
        text-align: left;
        line-height: 22px;
        font-weight: 400;
        padding: 20px 0 40px 0;
      }
      .list-img {
        display: flex;
        flex-wrap: wrap;
        justify-content: left;
        margin-bottom: 120px;
        .list-img-box {
          border: 1px solid #e5e5e5;
          width: 330px;
          height: 124px;
          margin: 0 -1px -1px 0;
          cursor: pointer;
          .list-img-item {
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
          }
        }
      }
    }
  }
}
</style>
