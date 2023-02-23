<template>
  <div class="access-main">
    <div class="page-header">
      <div class="page-header-logo">
        <img src="../../assets/images/logo.png" alt="" @click="pageJump" />
      </div>
    </div>
    <div class="access-header">
      <div class="access-header-container">
        <div class="banner-operate-left">
          <img src="../../assets/images/bannerText.svg" alt="" />
          <div class="banner-operate-text">人才评定</div>
          <div class="banner-operate-button">
            <div class="operate-item" @click="processClick">
              <div class="operate-item-text">
                <span style="margin-left: 20px"
                  >我要报名<i class="operate-item-text-icon">→</i></span
                >
              </div>
            </div>
            <div class="operate-item" @click="queryClick">
              <div class="operate-item-text">
                <span style="margin-left: 20px"
                  >证书查询<i class="operate-item-text-icon">→</i></span
                >
              </div>
            </div>
          </div>
        </div>
        <div class="banner-operate-right">
          <img src="../../assets/images/bannerRight.svg" alt="" />
        </div>
      </div>
    </div>
    <div class="access-container">
      <div class="access-system">
        <div class="part-title" style="margin-top: 70px; margin-bottom: 25px">
          <div class="part-title-size">评定体系</div>
        </div>
        <div class="part-container">
          <div class="part-container-text" style="margin-bottom: 15px">
            <span>
              随着openEuler及其发行版本在各个行业使用量逐年增多，相关人才的评定诉求愈发强烈，故由openEuler社区联合伙伴共同打造openEuler人才评定体系。
            </span>
          </div>
          <div class="part-container-text">
            <span>
              openEuler人才评定体系旨在帮助企业快速培养专业openEuler生态使用人才；推动相关从业人员高效获得权威资质评定；促使技术爱好者踊跃融入社区技术生态建设。
            </span>
          </div>
        </div>
      </div>
      <div class="access-system">
        <div class="part-title" style="margin-top: 70px; margin-bottom: 30px">
          <div class="part-title-size">评定等级</div>
        </div>
        <div class="part-container">
          <r-z-level></r-z-level>
        </div>
      </div>
      <div class="access-system">
        <div class="part-title" style="margin-top: 70px; margin-bottom: 30px">
          <div class="part-title-size">评定流程</div>
        </div>
        <div class="part-container">
          <r-z-process></r-z-process>
        </div>
      </div>
      <div class="access-system">
        <div class="part-title" style="margin-top: 70px; margin-bottom: 24px">
          <div class="part-title-size" style="margin-bottom: 16px">
            人才评定合作伙伴
          </div>
          <div style="font-size: 14px; color: #555555; font-weight: 400">
            合作伙伴招募详细内容可联系
            <a
              href="mailto:oecxonline@openeuler.sh"
              target="_blank"
              class="mail"
            >
              oecxonline@openeuler.sh
            </a>
          </div>
        </div>
        <div class="part-container">
          <r-z-combine></r-z-combine>
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
import RZLevel from "./rzLevel";
import RZProcess from "./rzProcess";
import RZCombine from "./rzCombine";
import PageFooter from "./pageFooter";
export default {
  components: {
    RZLevel,
    RZProcess,
    RZCombine,
    PageFooter,
  },
  methods: {
    pageJump() {
      window.open("https://www.openeuler.org/zh/");
    },
    processClick() {
      let routeUrl = this.$router.resolve({
        path: "/signUp",
      });
      window.open(routeUrl.href, "_blank");
    },
    queryClick() {
      // let routeUrl = this.$router.resolve({
      //   path: "https://www.openeuler.org/zh/community/certification-services/search.html",
      // });
      window.open(
        "https://www.openeuler.org/zh/community/certification-services/search.html",
        "_blank"
      );
    },
  },
};
</script>

<style lang="scss" scoped>
.access-main {
  overflow-x: hidden;
  .page-header {
    width: 100%;
    height: 80px;
    background: #ffffff;
    .page-header-logo {
      padding-left: 4px;
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
  .access-header {
    padding: 0;
    margin: 0;
    height: 280px;
    background-image: url("../../assets/images/banner.jpg");
    background-repeat: no-repeat;
    background-position: 50% 50%;
    .access-header-container {
      display: flex;
      flex-direction: row;
      max-width: 1416px;
      margin: 0 auto;
      justify-content: space-between;
      align-items: center;
      height: 280px;
      .banner-operate-left {
        //padding-left: 15px;
        .banner-operate-text {
          font-size: 54px;
          color: #ffffff;
          font-weight: 400;
          margin-top: -38px;
          line-height: 76px;
        }
        .banner-operate-button {
          display: flex;
          flex-direction: row;
          flex-wrap: wrap;
          margin-top: 20px;
          .operate-item {
            border: 1px solid #ffffff;
            width: 120px;
            height: 40px;
            cursor: pointer;
            margin-right: 22px;
            .operate-item-text {
              display: flex;
              font-size: 14px;
              color: #ffffff;
              font-weight: 400;
              line-height: 40px;
              text-align: center;
              width: 100%;
              height: 100%;
              .operate-item-text-icon {
                padding-left: 8px;
              }
            }
            .operate-item-text:hover .operate-item-text-icon {
              padding-left: 15px;
            }
          }
        }
      }
      .banner-operate-right {
        //padding-right: 15px;
        margin-bottom: -53px;
      }
    }
  }
  .access-container {
    max-width: 1416px;
    margin: 0 auto;
    .part-title {
      text-align: center;
      .part-title-size {
        font-size: 36px;
        color: #000000;
        font-weight: 200;
      }
      .mail {
        text-decoration: none;
        font-size: 14px;
        color: #002fa7;
        font-weight: 400;
      }
    }
    .part-container-text {
      white-space: normal;
      word-break: break-all;
      font-size: 18px;
      color: #000000;
      line-height: 26px;
      font-weight: 400;
    }
  }
}
@media screen and (max-width: 1510px) {
  .access-main {
    overflow-x: hidden;
    .page-header {
      width: 100%;
      height: 80px;
      background: #ffffff;
      .page-header-logo {
        padding-left: 40px;
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
    .access-header {
      padding: 0;
      margin: 0;
      height: 280px;
      background-image: url("../../assets/images/banner.jpg");
      .access-header-container {
        display: flex;
        flex-direction: row;
        max-width: 1416px;
        margin: 0 auto;
        justify-content: space-between;
        align-items: center;
        height: 280px;
        .banner-operate-left {
          padding-left: 40px;
          .banner-operate-text {
            font-size: 54px;
            color: #ffffff;
            font-weight: 400;
            margin-top: -38px;
            line-height: 76px;
          }
          .banner-operate-button {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            margin-top: 20px;
            .operate-item {
              border: 1px solid #ffffff;
              width: 120px;
              height: 40px;
              cursor: pointer;
              margin-right: 22px;
              .operate-item-text {
                display: flex;
                font-size: 14px;
                color: #ffffff;
                font-weight: 400;
                line-height: 40px;
                text-align: center;
                width: 100%;
                height: 100%;
                .operate-item-text-icon {
                  padding-left: 8px;
                }
              }
              .operate-item-text:hover .operate-item-text-icon {
                padding-left: 15px;
              }
            }
          }
        }
        .banner-operate-right {
          padding-right: 40px;
        }
      }
    }
    .access-container {
      max-width: 1416px;
      margin: 0 auto;
      .part-title {
        text-align: center;
        .part-title-size {
          font-size: 36px;
          color: #000000;
          font-weight: 200;
        }
        .mail {
          text-decoration: none;
          font-size: 14px;
          color: #002fa7;
          font-weight: 400;
        }
      }
      .part-container-text {
        white-space: normal;
        word-break: break-all;
        font-size: 18px;
        color: #000000;
        line-height: 26px;
        font-weight: 400;
        margin: 0 40px 15px 40px;
      }
    }
  }
}
</style>
