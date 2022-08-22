<template>
  <div>
    <div class="page-header">
      <div class="page-header-logo">
        <img src="../../assets/images/logo.png" alt="" @click="pageJump" />
      </div>
    </div>
    <div class="page-main">
      <div class="page-main-title">证书查询</div>
      <div class="page-main-divider"></div>
      <div class="page-main-list">
        <div class="list-content-tip">
          请将您的姓名、认证考试所用的电子邮箱、手机号码、准考证号等信息发送至邮箱
          <a
            href="mailto:oecxonline@openeuler.io"
            target="_blank"
            style="color: #002fa7"
            >oecxonline@openeuler.io </a
          >，您的证书将通过邮箱发放至您的认证考试注册邮箱。
        </div>
      </div>
      <div class="page-main-list">
        <div class="list-title">邮件模板</div>
        <div class="list-content">
          <div class="content-text">
            <span class="text-left">收件人：</span>
            <span class="text-right" style="padding-left: 28px">
              oecxonline@openeuler.io
            </span>
          </div>
          <div class="content-text">
            <span class="text-left">邮件主题：</span>
            <span class="text-right" style="padding-left: 14px">
              openEuler社区人才认证-个人证书查询信息
            </span>
          </div>
          <div class="content-text-detail">
            <div class="text-left-detail">邮件正文：</div>
            <div
              class="text-right-detail"
              style="padding-left: 14px"
              v-html="mailContent"
            ></div>
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
  name: "SignUp",
  components: {
    PageFooter,
  },
  data() {
    return {
      mailContent:
        "您好，<br />" +
        "我是xxx<br />" +
        "于x年x月x日在xxx（考试机构名称）参加了openEuler社区人才认证考试。我已收到成绩通知单，现查询我的个人认证证书。<br />" +
        "<br />" +
        "邮箱账号是:<br />" +
        "准考证号是:<br />" +
        "手机号码是:<br />" +
        "<br />" +
        "谢谢！<br />" +
        "XXX（考生姓名）",
    };
  },
  methods: {
    pageJump() {
      window.open("https://www.openeuler.org/zh/");
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
    .list-content-tip {
      font-size: 14px;
      color: #555555;
      text-align: left;
      line-height: 22px;
      font-weight: 400;
      padding: 0 0 20px 0;
      a {
        text-decoration: none;
        font-size: 14px;
        color: #555555;
      }
    }
    .list-content {
      font-size: 14px;
      color: #555555;
      text-align: left;
      line-height: 22px;
      font-weight: 400;
      padding: 20px 0 40px 0;
      .content-text {
        background: rgba(27, 76, 201, 0.05);
        width: 90%;
        margin-bottom: 10px;
        .text-left {
          height: 34px;
          font-size: 14px;
          color: #000000;
          text-align: left;
          line-height: 34px;
          font-weight: 600;
          padding-left: 10px;
          white-space: nowrap;
        }
        .text-right {
          height: 34px;
          font-size: 14px;
          color: #555555;
          text-align: left;
          line-height: 34px;
          font-weight: 400;
        }
      }
      .content-text-detail {
        background: rgba(27, 76, 201, 0.05);
        width: 90%;
        margin-bottom: 10px;
        display: flex;
        .text-left-detail {
          font-size: 14px;
          color: #000000;
          text-align: left;
          font-weight: 600;
          padding: 10px 0 10px 10px;
          white-space: nowrap;
        }
        .text-right-detail {
          font-size: 14px;
          color: #555555;
          text-align: left;
          font-weight: 400;
          margin-left: 5px;
          padding: 10px 0 20px 10px;
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
      .list-content-tip {
        font-size: 14px;
        color: #555555;
        text-align: left;
        line-height: 22px;
        font-weight: 400;
        padding: 0 0 20px 0;
        a {
          text-decoration: none;
          font-size: 14px;
          color: #555555;
        }
      }
      .list-content {
        font-size: 14px;
        color: #555555;
        text-align: left;
        line-height: 22px;
        font-weight: 400;
        padding: 20px 0 40px 0;
        .content-text {
          background: rgba(27, 76, 201, 0.05);
          width: 90%;
          margin-bottom: 10px;
          .text-left {
            height: 34px;
            font-size: 14px;
            color: #000000;
            text-align: left;
            line-height: 34px;
            font-weight: 600;
            padding-left: 10px;
            white-space: nowrap;
          }
          .text-right {
            height: 34px;
            font-size: 14px;
            color: #555555;
            text-align: left;
            line-height: 34px;
            font-weight: 400;
          }
        }
        .content-text-detail {
          background: rgba(27, 76, 201, 0.05);
          width: 90%;
          margin-bottom: 10px;
          display: flex;
          .text-left-detail {
            font-size: 14px;
            color: #000000;
            text-align: left;
            font-weight: 600;
            padding: 10px 0 10px 10px;
            white-space: nowrap;
          }
          .text-right-detail {
            font-size: 14px;
            color: #555555;
            text-align: left;
            font-weight: 400;
            margin-left: 5px;
            padding: 10px 0 20px 10px;
          }
        }
      }
    }
  }
}
</style>
