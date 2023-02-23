<template>
  <div class="rz-query">
    <top-logo></top-logo>
    <div class="rz-query-main">
      <div class="rz-query-menu">
        <span class="rz-query-firstMenu" @click="backToHome">{{
          firstMenu
        }}</span>
        <img
          src="../../assets/images/mobile/menu_right.svg"
          style="vertical-align: middle"
          alt=""
        />
        <span class="rz-query-secondMenu">{{ secondMenu }}</span>
      </div>
      <div class="rz-query-container">
        <div class="rz-query-container-title">{{ containerTitle }}</div>
        <div class="rz-query-container-divide"></div>
        <div class="rz-query-container-content">{{ containerContent }}</div>
        <div class="rz-query-mail-title">{{ mailTitle }}</div>
        <div class="rz-query-mail-box">
          <div class="title">{{ receiveTitle }}</div>
          <div class="content">{{ receiveAddress }}</div>
        </div>
        <div class="rz-query-mail-box">
          <div class="title">{{ subjectTitle }}</div>
          <div class="content">{{ subjectContent }}</div>
        </div>
        <div class="rz-query-mail-message">
          <div class="title">{{ messageTitle }}</div>
          <div class="content">
            <div style="margin-top: 0.3125rem">
              您好，我是xxx，于x年x月x日在xxx（考试机构名称）参加了openEuler社区人才认证考试。我已收到成绩通知单，现查询我的个人认证证书。
            </div>
            <div style="margin-top: 0.75rem">邮箱账号是:</div>
            <div>准考证号是:</div>
            <div>手机号码是:</div>
            <div style="margin-top: 0.75rem">谢谢！</div>
            <div style="margin-bottom: 0.75rem">XXX（考生姓名）</div>
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
import PageFooter from "@/views/access/pageFooter";
export default {
  name: "rzSignUp",
  components: {
    PageFooter,
    TopLogo,
    pageFooter,
  },
  data() {
    return {
      firstMenu: "人才评定",
      secondMenu: "证书查询",
      containerTitle: "证书查询",
      containerContent:
        "请将您的姓名、认证考试所用的电子邮箱、手机号码、准考证号等信息发送至邮箱oecxonline@openeuler.sh，您的证书将通过邮箱发放至您的认证考试注册邮箱。",
      mailTitle: "邮件模版",
      receiveTitle: "收件人：",
      receiveAddress: "oecxonline@openeuler.sh",
      subjectTitle: "邮件主题：",
      subjectContent: "openEuler社区人才认证-个人证书查询信息",
      messageTitle: "邮件正文：",
    };
  },
  methods: {
    backToHome() {
      this.$router.push("/");
    },
  },
};
</script>

<style lang="scss" scoped>
.rz-query {
  width: 100%;
  height: 100%;
  .rz-query-main {
    padding: 0 1rem;
    margin-bottom: 2.5rem;
    .rz-query-menu {
      margin-top: 1rem;
      margin-bottom: 1rem;
      img {
        width: 1rem;
        height: 1rem;
      }
      .rz-query-firstMenu {
        font-size: 0.75rem;
        color: #555555;
        text-align: left;
        line-height: 1.125rem;
        font-weight: 400;
      }
      .rz-query-secondMenu {
        font-size: 0.75rem;
        color: #000000;
        text-align: left;
        line-height: 1.125rem;
        font-weight: 400;
      }
    }
    .rz-query-container {
      background: #ffffff;
      box-shadow: 0 0.0625rem 0.3125rem 0 rgba(45, 47, 51, 0.1);
      padding: 1rem;
      .rz-query-container-title {
        font-size: 1rem;
        color: #000000;
        line-height: 1.5rem;
        //font-weight: 200;
        font-weight: 400;
      }
      .rz-query-container-divide {
        border-bottom: 0.0625rem solid #e5e5e5;
        margin-top: 1rem;
      }
      .rz-query-container-content {
        font-size: 0.75rem;
        color: #555555;
        text-align: left;
        line-height: 1.125rem;
        font-weight: 400;
        margin-top: 1rem;
      }
      .rz-query-mail-title {
        font-size: 0.875rem;
        color: #000000;
        text-align: left;
        line-height: 1.375rem;
        font-weight: 400;
        margin-top: 1.5rem;
      }
      .rz-query-mail-box {
        margin-top: 0.5rem;
        background: rgba(27, 76, 201, 0.05);
        padding: 0.375rem 0.5rem;
        display: flex;
        .title {
          font-size: 0.75rem;
          color: #000000;
          text-align: left;
          line-height: 1.375rem;
          font-weight: 600;
          width: 4.5625rem;
        }
        .content {
          flex: 1;
          font-size: 0.75rem;
          color: #555555;
          text-align: left;
          line-height: 1.375rem;
          font-weight: 400;
        }
      }
      .rz-query-mail-message {
        margin-top: 0.5rem;
        //margin-bottom: 0.625rem;
        background: rgba(27, 76, 201, 0.05);
        padding: 0.375rem 0.5rem;
        .title {
          font-size: 0.75rem;
          color: #000000;
          text-align: left;
          line-height: 1.375rem;
          font-weight: 600;
          width: 4.5625rem;
        }
        .content {
          font-size: 0.75rem;
          color: #555555;
          text-align: left;
          line-height: 1.375rem;
          font-weight: 400;
        }
      }
    }
  }
}
</style>
