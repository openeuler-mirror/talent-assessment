<template>
  <div class="reLevelDetail">
    <top-logo></top-logo>
    <div class="navigation-box">
      <p class="first-navigation" @click="backToHome">{{ firstNavigation }}</p>
      <img alt class="navigation-icon" :src="navigationUrl" />
      <p class="second-navigation">{{ secondNavigation }}</p>
    </div>
    <div class="detail-content-box">
      <div class="detailTitle">{{ titleName }}</div>
      <div class="page-main-divider"></div>
      <!-- 课程介绍 -->
      <div class="detailIntroduce">
        <div class="title">{{ courseIntro }}</div>
        <div class="content">{{ courseDetailIntro }}</div>
      </div>
      <!-- 课程链接 -->
      <div class="detailLink">
        <div class="title">{{ courseLink }}</div>
        <!-- <div class="content"> {{ courseLinkContent }} </div> -->
        <div>
          <a class="content" :href="courseLinkContent" target="_blank">
            {{ courseLinkContent }}
          </a>
        </div>
      </div>
      <!-- 课程大纲 -->
      <div class="detailOutline">
        <div class="title">{{ courseOutline }}</div>
        <div class="content">
          <div
            v-for="(item, index) in outlineArr"
            :key="index"
            class="item-box"
          >
            <div class="item-left-box">
              <!-- serialNum -->
              <div class="serialNum">{{ item.serialNum }}</div>
              <div class="name">{{ item.name }}</div>
            </div>

            <div class="item-right-box">
              <!-- 图片 -->
              <img :src="item.imgSrc" class="img" />
              <!-- 时间数 -->
              <span class="timeNum"> {{ item.timeNum + "小时" }} </span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <page-footer></page-footer>
  </div>
</template>

<script>
/**
 * @Author: danliuf@isoftstone.com
 * @Version: 1.2
 * Company: 软通动力
 */
import topLogo from "@/views/mobile/topLogo";
import pageFooter from "./pageFooter.vue";
export default {
  components: { pageFooter, topLogo },
  data() {
    return {
      firstNavigation: "人才评定",
      navigationUrl: require("../../../src/assets/images/mobile/menu_right.svg"),
      secondNavigation: "认证等级",
      titleName: "初级 OECA课程",
      courseIntro: "课程介绍",
      courseDetailIntro:
        "社区根据openEuler技术发展路线与市场需求，规划设计了《openEuler OECA认证课程》，本课程以内部原理、实践实战为主，理论与实践相结合。课程内容涵盖操作系统安装升级、系统服务配置和管理、ssh管理及安全、用户和群组管理等课程内容。",
      courseLink: "课程链接",
      // courseLinkContent:
      //   "https://training-assessment.osinfra.cn/portal/1519850993951571970/more?cardId=s9x1ddqboi&activeIndex=0&pageDetailsUuid=626b3f291baa0d665aa49141&sxz-lang=zh_CN",
      courseLinkContent:
        "https://partner.huawei.com/university/webui_portal/#/zone?customizedZoneId=VxkRMyFZWD7vX1uyOfwZFpBugag",
      courseOutline: "课程大纲",
      outlineArr: [
        {
          serialNum: "01",
          name: "系统安装及自动安装",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1.5",
        },
        {
          serialNum: "02",
          name: "物理存储管理及逻辑卷管理",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2",
        },
        {
          serialNum: "03",
          name: "系统服务的配置和管理",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2",
        },
        {
          serialNum: "04",
          name: "网络连接和防火墙",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2",
        },
        {
          serialNum: "05",
          name: "进程及进程管理",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1.5",
        },
        {
          serialNum: "06",
          name: "文件和文件系统",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1",
        },
        {
          serialNum: "07",
          name: "用户和群组",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1",
        },
        {
          serialNum: "08",
          name: "系统日志管理",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1",
        },
        {
          serialNum: "09",
          name: "常规故障定位定界",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2.5",
        },
        {
          serialNum: "10",
          name: "ssh管理及安全",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2",
        },
        {
          serialNum: "11",
          name: "shell脚本",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2",
        },
        {
          serialNum: "12",
          name: "系统启动流程",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1.5",
        },
      ],
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
.reLevelDetail {
  background: #f5f6f8;
  .navigation-box {
    height: 3.1875rem;
    //width: 100%;
    margin: 0 1.125rem;
    display: flex;
    align-items: center;
    .first-navigation {
      font-size: 0.75rem;
      color: #555555;
      text-align: left;
      line-height: 1.125rem;
      font-weight: 400;
    }
    .navigation-icon {
      width: 1rem;
      height: 1rem;
    }
    .second-navigation {
      font-size: 0.75rem;
      color: #000000;
      text-align: left;
      line-height: 1.125rem;
      font-weight: 400;
    }
  }
  .detail-content-box {
    margin: 0 1rem 2.5rem 1rem;
    padding: 0 1rem;
    display: flex;
    flex-direction: column;
    background: #ffffff;
    box-shadow: 0 0.0625rem 0.3125rem 0 rgba(45, 47, 51, 0.1);
    .detailTitle {
      display: flex;
      align-items: center;
      height: 3.5rem;
      font-size: 1rem;
      color: #000000;
      line-height: 1.5rem;
      //font-weight: 200;
      font-weight: 400;
    }
    .page-main-divider {
      background: #e5e5e5;
      height: 0.0625rem;
    }
    .detailIntroduce {
      margin-top: 1.125rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
      .title {
        font-size: 0.875rem;
        color: #000000;
        text-align: left;
        line-height: 1.375rem;
        font-weight: 400;
      }
      .content {
        margin-top: 0.625rem;
        font-size: 0.75rem;
        color: #555555;
        text-align: left;
        line-height: 1.125rem;
        font-weight: 400;
      }
    }
    .detailLink {
      margin-top: 1.5625rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
      .title {
        font-size: 0.875rem;
        color: #000000;
        text-align: left;
        line-height: 1.375rem;
        font-weight: 400;
      }
      .content {
        word-break: break-all;
        display: block;
        margin-top: 0.625rem;
        font-size: 0.75rem;
        color: #002fa7;
        line-height: 1.125rem;
        font-weight: 400;
        text-decoration: none;
        outline: none;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
      }
    }
    .detailOutline {
      margin-top: 1.5625rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
      .title {
        font-size: 0.875rem;
        color: #000000;
        line-height: 1.375rem;
        font-weight: 400;
      }
      .content {
        margin-top: 0.625rem;
        display: flex;
        flex-direction: column;
        .item-box {
          border: 0.0625rem solid #002fa7;
          display: flex;
          flex: 1;
          align-items: center;
          height: 2.5rem;
          padding: 0.5rem 0.6875rem;
          margin: 0 0 0.9375rem 0;
          .item-left-box {
            flex: 3;
            display: flex;
            align-items: center;
            .serialNum {
              font-size: 0.875rem;
              color: #002fa7;
              line-height: 1.375rem;
              font-weight: 400;
            }
            .name {
              margin-left: 0.5rem;
              font-size: 0.75rem;
              color: #000000;
              line-height: 1.125rem;
              font-weight: 400;
            }
          }
          .item-right-box {
            flex: 1;
            display: flex;
            align-items: center;
            .img {
              width: 0.8125rem;
              height: 0.8125rem;
            }
            .timeNum {
              margin-left: 0.5rem;
              font-size: 0.75rem;
              color: #555555;
              line-height: 1.125rem;
              font-weight: 400;
            }
          }
        }
      }
    }
  }
}
</style>
