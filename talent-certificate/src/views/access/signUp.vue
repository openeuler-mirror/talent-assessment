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
          为方便对参加openEuler开源社区人才能力评定的学员进行能力评定考试,openEuler开源社区优选了多家业界资深的操作系统能力评定考试机构，并为以下各合作伙伴已做相关授权。
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
            <img
              :class="
                item.id === '04'
                  ? 'list-img-tongxin'
                  : item.id === '05'
                  ? 'list-img-hunan'
                  : item.id === '06'
                  ? 'list-img-runhe'
                  : 'list-img-item'
              "
              :src="item.src"
              alt="partnerImg"
            />
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
        { id: "04", src: require("../../assets/images/tongxinlogo.svg") },
        { id: "05", src: require("../../assets/images/hunanlogo.png") },
        { id: "06", src: require("../../assets/images/runhelogo.png") },
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
        window.open("https://openlab.chinasoftinc.com/", "_blank");
      } else if (pId === "04") {
        window.open("https://edu.uniontech.com/openEuler", "_blank");
      } else if (pId === "05") {
        window.open("http://kaoshi.openeuler-hn.com/", "_blank");
      } else if (pId === "06") {
        window.open("http://talent-ass.hoperun.com:49999", "_blank");
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
        .list-img-tongxin {
          width: 230px;
          height: 100%;
          display: block;
          margin: auto;
        }
        .list-img-hunan {
          width: 82%;
          height: 100%;
          display: block;
          margin: auto;
        }
        .list-img-runhe {
          width: 80%;
          height: 60%;
          display: block;
          margin: 25px auto;
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
