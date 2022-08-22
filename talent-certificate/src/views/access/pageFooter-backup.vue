<template>
  <div class="page-footer">
    <div class="atom">
      <p class="atom-text">
        openEuler 是由开放原子开源基金会（OpenAtom
        Foundation）孵化及运营的开源项目
      </p>
      <img class="atom-logo" src="../../assets/images/atom-logo.svg" alt="" />
    </div>
    <div class="footer-divider"></div>
    <div class="footer-content">
      <div class="footer-content-inner">
        <div class="footer-logo">
          <img
            src="../../assets/images/inner-logo.png"
            width="130"
            height="46"
            alt=""
          />
          <p>
            <a href="mailto:contact@openeuler.io" target="_blank" class="mail">
              contact@openeuler.io
            </a>
          </p>
        </div>
        <div class="footer-option">
          <div class="footer-option-item">
            <a
              href="https://www.openeuler.org/zh/other/brand/"
              target="_blank"
              class="link"
            >
              品牌
            </a>
            <a
              href="https://www.openeuler.org/zh/other/privacy/"
              target="_blank"
              class="link"
            >
              隐私政策
            </a>
            <a
              href="https://www.openeuler.org/zh/other/legal/"
              target="_blank"
              class="link"
            >
              法律声明
            </a>
            <a
              href="https://status.openeuler.org/"
              target="_blank"
              class="link"
            >
              服务状态
            </a>
          </div>
          <p class="copyRight">版权所有 © 2022 openEuler 保留一切权利</p>
        </div>
        <div class="footer-right">
          <div class="code-box">
            <a
              class="code-pop"
              @mouseover="helperOverOpt()"
              @mouseout="helperOutOpt()"
            >
              <img
                alt
                class="img"
                src="../../assets/images/xiaozhushou.png"
                width="125"
                height="20"
              />
              <div class="code-layer" id="helperCodeLayer">
                <img
                  alt
                  class="img"
                  src="../../assets/images/xzsCode.png"
                  width="78"
                  height="78"
                />
              </div>
            </a>
            <a
              class="code-pop"
              @mouseover="accountOverOpt()"
              @mouseout="accountOutOpt()"
            >
              <img
                alt
                class="img"
                src="../../assets/images/xiaozhushou.png"
                width="125"
                height="20"
              />
              <div class="code-layer" id="accountCodeLayer">
                <img
                  alt
                  class="img"
                  src="../../assets/images/gzhCode.png"
                  width="78"
                  height="78"
                />
              </div>
            </a>
            <!--            <img-->
            <!--              src="../../assets/images/xiaozhushou.png"-->
            <!--              width="125"-->
            <!--              height="20"-->
            <!--              alt=""-->
            <!--            />-->
            <!--            <img-->
            <!--              src="../../assets/images/gongzhonghao.png"-->
            <!--              width="125"-->
            <!--              height="20"-->
            <!--              alt=""-->
            <!--            />-->
          </div>
          <div class="footer-links">
            <a href="https://my.oschina.net/openeuler" target="_blank">
              <img
                src="../../assets/images/osChina.png"
                width="85"
                height="20"
                alt=""
              />
            </a>
            <a
              href="https://blog.csdn.net/openEuler_?spm=1000.2115.3001.5343"
              target="_blank"
            >
              <img
                src="../../assets/images/csdn.png"
                width="50"
                height="14"
                alt=""
              />
            </a>
            <a href="https://juejin.cn/user/3183782863845454" target="_blank">
              <img
                src="../../assets/images/xiTu.png"
                width="70"
                height="14"
                alt=""
              />
            </a>
            <a
              href="https://space.bilibili.com/527064077/channel/series"
              target="_blank"
            >
              <img
                src="../../assets/images/bilibili.png"
                width="32"
                height="14"
                alt=""
              />
            </a>
            <a
              href="https://www.infoq.cn/profile/6E6CE3E2316F28/publish"
              target="_blank"
            >
              <img
                src="../../assets/images/infoQ.png"
                width="47"
                height="14"
                alt=""
              />
            </a>
            <a href="https://blog.51cto.com/u_14948868" target="_blank">
              <img
                src="../../assets/images/51CTO.png"
                width="66"
                height="14"
                alt=""
              />
            </a>
          </div>
        </div>
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
  name: "PageFooter",
  methods: {
    helperOverOpt() {
      const helperCodeLayer = document.getElementById("helperCodeLayer");
      helperCodeLayer.style.display = "block";
    },
    helperOutOpt() {
      const helperCodeLayer = document.getElementById("helperCodeLayer");
      helperCodeLayer.style.display = "none";
    },
    accountOverOpt() {
      const accountCodeLayer = document.getElementById("accountCodeLayer");
      accountCodeLayer.style.display = "block";
    },
    accountOutOpt() {
      const accountCodeLayer = document.getElementById("accountCodeLayer");
      accountCodeLayer.style.display = "none";
    },
  },
};
</script>

<style lang="scss" scoped>
.page-footer {
  width: 100%;
  height: 100%;
  //background-image: url("../../assets/images/footerBg.png");
  //background-size: cover;
  border-bottom: 1px solid #121212;
  background-color: #121212;
  .atom {
    text-align: center;
    position: relative;
    margin: 0 auto;
    padding: 15px 28%;
    .atom-text {
      font-size: 20px;
      color: #ffffff;
      text-align: center;
      line-height: 28px;
      font-weight: 400;
    }
    .atom-logo {
      height: 40px;
    }
  }
  .footer-divider {
    margin: 0 auto;
    width: 73%;
    height: 1px;
    background-color: #2c2c2c;
  }
  .footer-content {
    .footer-content-inner {
      width: 73%;
      margin: 0 auto;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: center;
      position: relative;
      .footer-logo {
        flex: 1;
        text-align: center;
        margin-top: 5px;
        .mail {
          color: #ffffff;
          font-size: 14px;
          text-decoration: none;
        }
      }
      .footer-option {
        text-align: center;
        .footer-option-item {
          margin: 0;
          padding: 0;
          .link {
            color: #ffffff;
            display: inline-block;
            border-right: 1px solid #ffffff;
            text-decoration: none;
            padding: 0 10px;
            font-size: 14px;
            text-align: center;
            line-height: 22px;
            font-weight: 400;
          }
          .link:last-child {
            border-right: 0;
          }
        }
        .copyRight {
          font-size: 14px;
          color: #ffffff;
          text-align: center;
          line-height: 22px;
          font-weight: 400;
        }
      }
      .footer-right {
        flex: 1;
        .code-box {
          display: flex;
          justify-content: center;
          align-items: center;
          gap: 16px;
          margin-bottom: 18px;
          .code-pop {
            position: relative;
            //height: 20px;
            display: block;
            .code-layer {
              position: absolute;
              z-index: 99;
              display: none;
              background: #fff;
              padding: 6px;
              top: -10vh;
              left: 1vw;
            }
          }
        }
        .footer-links {
          display: flex;
          justify-content: center;
          align-items: center;
          padding-left: 20px;
          gap: 12px;
        }
      }
    }
  }
}
</style>
