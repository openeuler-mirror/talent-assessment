<template>
  <div class="page-footer">
    <div class="atom">
      <div class="atom-text">openEuler 是由开放原子开源基金会</div>
      <div class="atom-text">（OpenAtom Foundation）</div>
      <div class="atom-text">孵化及运营的开源项目</div>
      <img class="atom-logo" src="../../assets/images/atom-logo.svg" alt="" />
    </div>

    <div class="footer-divider"></div>

    <!-- <div class="footer-content"> -->
    <div class="footer-content">
      <div class="footer-option">
        <div class="footer-option-item">
          <a
            href="https://new.openeuler.org/zh/other/brand/"
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
          <a href="https://status.openeuler.org/" target="_blank" class="link">
            服务状态
          </a>
        </div>
        <div class="copyRight">版权所有 © 2024 openEuler 保留一切权利</div>
      </div>
      <div class="footer-logo">
        <img
          src="../../assets/images/mobile/inner-logo.svg"
          alt=""
          class="icon"
        />
        <div>
          <a href="mailto:contact@openeuler.io" target="_blank" class="mail">
            contact@openeuler.io
          </a>
        </div>
      </div>

      <div class="footer-right">
        <div class="code-box">
          <a class="code-pop">
            <div class="code-layer">
              <img alt class="img" src="../../assets/images/mobile/gzh.png" />
            </div>
            <div class="code-text">openEuler公众号</div>
          </a>
          <a class="code-pop">
            <div class="code-layer">
              <img alt class="img" src="../../assets/images/mobile/xzs.png" />
            </div>
            <div class="code-text">openEuler小助手</div>
          </a>
        </div>
        <div class="footer-links">
          <a href="https://my.oschina.net/openeuler" target="_blank">
            <img src="../../assets/images/osChina.png" alt="" class="osChina" />
          </a>
          <a
            href="https://blog.csdn.net/openEuler_?spm=1000.2115.3001.5343"
            target="_blank"
          >
            <img src="../../assets/images/csdn.png" alt="" class="csdn" />
          </a>
          <a href="https://juejin.cn/user/3183782863845454" target="_blank">
            <img src="../../assets/images/xiTu.png" alt="" class="xiTu" />
          </a>
          <a
            href="https://www.infoq.cn/profile/6E6CE3E2316F28/publish"
            target="_blank"
          >
            <img src="../../assets/images/infoQ.png" alt="" class="infoQ" />
          </a>
          <a
            href="https://space.bilibili.com/527064077/channel/series"
            target="_blank"
          >
            <img
              src="../../assets/images/bilibili.png"
              alt=""
              class="bilibili"
            />
          </a>
          <a href="https://blog.51cto.com/u_14948868" target="_blank">
            <img src="../../assets/images/51CTO.png" alt="" class="cto" />
          </a>
        </div>
      </div>
    </div>
    <!-- </div> -->
  </div>
</template>

<script>
/**
 * @Author: zhshaof@isoftstone.com
 * @Version: 1.2
 * Company: 软通动力
 */
export default {
  data() {
    return {};
  },
};
</script>

<style lang="scss" scoped>
.page-footer {
  padding: 1.5rem 0 1.5rem 0;
  height: 30.75rem;
  width: 100%;
  background-color: #121212;
  .atom {
    margin: 0 auto;
    height: 8.4375rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    .atom-text {
      font-size: 0.875rem;
      color: #ffffff;
      text-align: center;
      line-height: 1.375rem;
      font-weight: 500;
    }
    .atom-logo {
      height: 1.875rem;
      margin: 1rem 0 1.5rem 0;
    }
  }
  .footer-divider {
    margin: 0 1.5rem;
    height: 0.0625rem;
    opacity: 0.12;
    background-color: #e5e5e5;
  }
  // .footer-content {
  .footer-content {
    margin: 1.5rem 0rem 0rem 0rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    position: relative;
    height: 22.25rem;
    .footer-logo {
      margin-top: 1rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      .icon {
        width: 5.375rem;
        height: 1.25rem;
      }
      .mail {
        text-decoration: none;
        font-size: 0.5rem;
        color: #ffffff;
        font-weight: 400;
      }
    }
    .footer-option {
      text-align: center;
      .footer-option-item {
        padding: 0;
        .link {
          display: inline-block;
          border-right: 0.0625rem solid #ffffff;
          text-decoration: none;
          padding: 0 0.5rem;
          font-size: 0.75rem;
          color: #ffffff;
          text-align: center;
          line-height: 0.75rem;
          font-weight: 400;
        }
        .link:last-child {
          border-right: 0;
        }
      }
      .copyRight {
        font-size: 0.75rem;
        color: #ffffff;
        text-align: center;
        line-height: 1.125rem;
        font-weight: 400;
        margin-top: 0.5rem;
      }
    }
    .footer-right {
      .code-box {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 2rem;
        margin: 2.25rem 0rem 0rem 0rem;
        .code-pop {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          .code-layer {
            z-index: 99;
            display: block;
            background: #fff;
            width: 4.875rem;
            height: 4.875rem;
            text-align: center;
            .img {
              width: 4.5rem;
              height: 4.5rem;
            }
          }
          .code-text {
            margin-top: 0.5rem;
            font-size: 0.75rem;
            line-height: 0.75rem;
            color: #ffffff;
            font-weight: 400;
          }
        }
      }
      .footer-links {
        margin-top: 2.25rem;
        //margin-bottom: 1.25rem;
        margin-bottom: 1rem;
        display: grid;
        grid-template-columns: repeat(3, 30%);
        grid-column-gap: 1rem;
        grid-row-gap: 1.25rem;
        justify-content: center;
        align-items: center;
        text-align: center;
        .osChina {
          width: 4.75rem;
          height: 1.125rem;
        }
        .csdn {
          width: 3.25rem;
          height: 0.875rem;
        }
        .xiTu {
          width: 4.4375rem;
          height: 0.875rem;
        }
        .infoQ {
          width: 3rem;
          height: 0.875rem;
        }
        .bilibili {
          width: 2.4375rem;
          height: 1.0625rem;
        }
        .cto {
          width: 4.1875rem;
          height: 0.875rem;
        }
      }
    }
  }
  // }
}
</style>
