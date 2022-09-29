<template>
  <div class="rz-signUp">
    <top-logo></top-logo>
    <div class="rz-signUp-main">
      <div class="rz-signUp-menu">
        <span class="rz-signUp-firstMenu" @click="backToHome">{{
          firstMenu
        }}</span>
        <img
          src="../../assets/images/mobile/menu_right.svg"
          style="vertical-align: middle"
          alt=""
        />
        <span class="rz-signUp-secondMenu">{{ secondMenu }}</span>
      </div>
      <div class="rz-signUp-container">
        <div class="rz-signUp-container-title">{{ containerTitle }}</div>
        <div class="rz-signUp-container-divide"></div>
        <div class="rz-signUp-container-name">{{ containerName }}</div>
        <div class="rz-signUp-container-content">{{ containerContent }}</div>
        <div class="rz-signUp-container-name" style="margin-top: 1.5rem">
          {{ containerSecondName }}
        </div>
        <div class="rz-signUp-container-content">
          {{ containerSecondContent }}
        </div>
        <div class="rz-signUp-container-partner">
          <div
            v-for="item in partnerImg"
            :key="item.id"
            class="rz-signUp-container-box"
            @click="imgClick(item.id)"
          >
            <img :src="item.src" alt="partnerImg" />
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
 * @Version: 1.2
 * Company: 软通动力
 */
import TopLogo from "@/views/mobile/topLogo";
import pageFooter from "@/views/mobile/pageFooter";

export default {
  name: "rzSignUp",
  components: {
    TopLogo,
    pageFooter,
  },
  data() {
    return {
      firstMenu: "人才评定",
      secondMenu: "我要报名",
      containerTitle: "我要报名",
      containerName: "合作委托声明",
      containerContent:
        "为方便对参加openEuler社区人才评定学员进行评定考试，openEuler社区优选业界资深操作系统评定考试机构。openEuler社区已经对评定考试的合作伙伴做相关授权。",
      containerSecondName: "报名入口",
      containerSecondContent:
        "当前已经授权如下合作伙伴，选择任一合作伙伴即可跳转至评定考试报名页面：",
      partnerImg: [
        { id: "01", src: require("../../assets/images/mobile/rtdl.png") },
        { id: "02", src: require("../../assets/images/mobile/hw.png") },
        { id: "03", src: require("../../assets/images/mobile/zsoft.png") },
        { id: "04", src: require("../../assets/images/company.svg") },
      ],
    };
  },
  methods: {
    backToHome() {
      this.$router.push("/");
    },
    imgClick(item) {
      if (item === "01") {
        window.open(
          "https://www.itongxue.net/itxcertificationdetails?id=26c81b6ed7f11be0b2491f9c58d8b22c"
        );
      } else if (item === "02") {
        window.open(
          "https://e.huawei.com/cn/talent/#/cert/product-details?certifiedProductId=383&amp%3BauthenticationLevel=CTYPE_CARE_HCIA&amp%3BtechnicalField=PSC&amp%3Bversion=1.0"
        );
      } else if (item === "03") {
        window.open("https://www.chinasofti.com/");
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.rz-signUp {
  width: 100%;
  height: 100%;

  .rz-signUp-main {
    padding: 0 1rem;
    margin-bottom: 2.5rem;

    .rz-signUp-menu {
      margin-top: 1rem;
      margin-bottom: 1rem;

      img {
        width: 1rem;
        height: 1rem;
      }

      .rz-signUp-firstMenu {
        font-size: 0.75rem;
        color: #555555;
        text-align: left;
        line-height: 1.125rem;
        font-weight: 400;
      }

      .rz-signUp-secondMenu {
        font-size: 0.75rem;
        color: #000000;
        text-align: left;
        line-height: 1.125rem;
        font-weight: 400;
      }
    }

    .rz-signUp-container {
      background: #ffffff;
      box-shadow: 0 0.0625rem 0.3125rem 0 rgba(45, 47, 51, 0.1);
      padding: 1rem;

      .rz-signUp-container-title {
        font-size: 1rem;
        color: #000000;
        line-height: 1.5rem;
        //font-weight: 200;
        font-weight: 400;
      }

      .rz-signUp-container-divide {
        border-bottom: 0.0625rem solid #e5e5e5;
        margin-top: 1rem;
      }

      .rz-signUp-container-name {
        margin-top: 1rem;
        font-size: 0.875rem;
        color: #000000;
        text-align: left;
        line-height: 1.375rem;
        font-weight: 400;
      }

      .rz-signUp-container-content {
        font-size: 0.75rem;
        color: #555555;
        text-align: left;
        line-height: 1.125rem;
        font-weight: 400;
        margin-top: 0.5rem;
      }

      .rz-signUp-container-partner {
        display: grid;
        column-gap: 0;
        row-gap: 0;
        grid-template-columns: repeat(2, minmax(5.125rem, 16.875rem));
        justify-content: center;
        margin-top: 1rem;
        //margin-bottom: 0.75rem;
        .rz-signUp-container-box {
          font-size: 1rem;
          min-height: 2.5rem;
          display: flex;
          margin: 0 -0.0625rem -0.0625rem 0;
          justify-content: center;
          align-items: center;
          border: 0.0625rem solid #e5e5e5;
          background-color: #ffffff;
          max-height: 7.5rem;
          overflow: hidden;
          cursor: pointer;
          img {
            display: block;
            width: 100%;
            height: 100%;
            border: 0;
          }
        }
      }
    }
  }
}
</style>
