<template>
  <div class="reLevelDetail">
    <div class="page-header">
      <div class="page-header-logo" @click="pageJump">
        <img src="../../assets/images/logo.png" alt="" />
      </div>
    </div>
    <div class="detailContent">
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
            <!-- serialNum -->
            <div class="serialNum">{{ item.serialNum }}</div>
            <div style="margin-left: 27px; flex: 1">
              <div class="name">{{ item.name }}</div>
              <div class="time-box">
                <!-- 图片 -->
                <img :src="item.imgSrc" class="img" />
                <!-- 时间数 -->
                <span class="timeNum"> {{ item.timeNum }} </span>
              </div>
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
 * @Version: 1.1
 * Company: 软通动力
 */
import PageFooter from "./pageFooter";
export default {
  components: {
    PageFooter,
  },
  data() {
    return {
      titleName: "初级 OECA课程",
      courseIntro: "课程介绍",
      courseDetailIntro:
        "社区根据openEuler技术发展路线与市场需求，规划设计了《openEuler OECA认证课程》，本课程以内部原理、实践实战为主，理论与实践相结合。课程内容涵盖操作系统安装升级、系统服务配置和管理、ssh管理及安全、用户和群组管理等课程内容。",
      courseLink: "课程链接",
      courseLinkContent:
        "https://training-assessment.osinfra.cn/portal/1519850993951571970/more?cardId=s9x1ddqboi&activeIndex=0&pageDetailsUuid=626b3f291baa0d665aa49141&sxz-lang=zh_CN",
      courseOutline: "课程大纲",
      outlineArr: [
        {
          serialNum: "01",
          name: "系统安装及自动安装",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1.5小时",
        },
        {
          serialNum: "02",
          name: "物理存储管理及逻辑卷管理",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2小时",
        },
        {
          serialNum: "03",
          name: "系统服务的配置和管理",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2小时",
        },
        {
          serialNum: "04",
          name: "网络连接和防火墙",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2小时",
        },
        {
          serialNum: "05",
          name: "进程及进程管理",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1.5小时",
        },
        {
          serialNum: "06",
          name: "文件和文件系统",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1小时",
        },
        {
          serialNum: "07",
          name: "用户和群组",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1小时",
        },
        {
          serialNum: "08",
          name: "系统日志管理",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1小时",
        },
        {
          serialNum: "09",
          name: "常规故障定位定界",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2.5小时",
        },
        {
          serialNum: "10",
          name: "ssh管理及安全",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2小时",
        },
        {
          serialNum: "11",
          name: "shell脚本",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "2小时",
        },
        {
          serialNum: "12",
          name: "系统启动流程",
          imgSrc: require("../../assets/images/time.png"),
          timeNum: "1.5小时",
        },
      ],
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
.reLevelDetail {
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
  .detailContent {
    max-width: 1336px;
    margin: 40px auto;
    padding: 40px;
    display: flex;
    // flex-wrap: wrap;
    flex-direction: column;
    color: rgba(0, 0, 0, 0.5);
    background: #ffffff;
    box-shadow: 0 1px 5px 0 rgba(45, 47, 51, 0.1);
    transition: box-shadow 1s;
    .detailTitle {
      display: flex;
      align-items: center;
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
    .detailIntroduce {
      //margin-top: 25px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      .title {
        font-size: 18px;
        color: #000000;
        line-height: 26px;
        font-weight: 400;
      }
      .content {
        margin-top: 20px;
        font-size: 14px;
        color: #555555;
        text-align: left;
        line-height: 22px;
        font-weight: 400;
      }
    }
    .detailLink {
      margin-top: 25px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      .title {
        font-size: 18px;
        color: #000000;
        line-height: 26px;
        font-weight: 400;
      }
      .content {
        word-break: break-all;
        display: block;
        margin-top: 20px;
        color: #002fa7;
        font-size: 14px;
        line-height: 22px;
        font-weight: 400;
        text-decoration: none;
        outline: none;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
      }
    }
    .detailOutline {
      margin-top: 25px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      .title {
        font-size: 18px;
        color: #000000;
        line-height: 26px;
        font-weight: 400;
      }
      .content {
        margin-top: 20px;
        display: flex;
        flex-wrap: wrap;
        .item-box {
          border: 1px solid #002fa7;
          display: flex;
          flex: 1;
          align-items: center;
          min-width: 15%;
          min-height: 84px;
          padding: 0px 27px;
          margin: 0px 30px 30px 0px;
          .serialNum {
            color: #002fa7;
            font-size: 30px;
            line-height: 22px;
            font-weight: 400;
          }
          .name {
            font-size: 14px;
            color: #000000;
            text-align: left;
            line-height: 22px;
            font-weight: 400;
          }
          .time-box {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            margin-top: 10px;
            .img {
              width: 16px;
              height: 16px;
            }
            .timeNum {
              font-size: 12px;
              color: #555555;
              text-align: left;
              line-height: 22px;
              font-weight: 400;
              margin-left: 10px;
            }
          }
        }
      }
    }
  }
}
@media only screen and (max-width: 1462px) {
  .reLevelDetail {
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
    .detailContent {
      max-width: 1336px;
      margin: 40px 16px;
      padding: 40px;
      display: flex;
      // flex-wrap: wrap;
      flex-direction: column;
      color: rgba(0, 0, 0, 0.5);
      background: #ffffff;
      box-shadow: 0 1px 5px 0 rgba(45, 47, 51, 0.1);
      transition: box-shadow 1s;
      .detailTitle {
        display: flex;
        align-items: center;
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
      .detailIntroduce {
        //margin-top: 25px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        .title {
          font-size: 18px;
          color: #000000;
          line-height: 26px;
          font-weight: 400;
        }
        .content {
          margin-top: 20px;
          font-size: 14px;
          color: #555555;
          text-align: left;
          line-height: 22px;
          font-weight: 400;
        }
      }
      .detailLink {
        margin-top: 25px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        .title {
          font-size: 18px;
          color: #000000;
          line-height: 26px;
          font-weight: 400;
        }
        .content {
          word-break: break-all;
          display: block;
          margin-top: 20px;
          color: #002fa7;
          font-size: 14px;
          line-height: 22px;
          font-weight: 400;
          text-decoration: none;
          outline: none;
          -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }
      }
      .detailOutline {
        margin-top: 25px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        .title {
          font-size: 18px;
          color: #000000;
          line-height: 26px;
          font-weight: 400;
        }
        .content {
          margin-top: 20px;
          display: flex;
          flex-wrap: wrap;
          .item-box {
            border: 1px solid #002fa7;
            display: flex;
            flex: 1;
            align-items: center;
            min-width: 15%;
            min-height: 84px;
            padding: 0px 27px;
            margin: 0px 30px 30px 0px;
            .serialNum {
              color: #002fa7;
              font-size: 30px;
              line-height: 22px;
              font-weight: 400;
            }
            .name {
              font-size: 14px;
              color: #000000;
              text-align: left;
              line-height: 22px;
              font-weight: 400;
            }
            .time-box {
              display: flex;
              flex-wrap: wrap;
              align-items: center;
              margin-top: 10px;
              .img {
                width: 16px;
                height: 16px;
              }
              .timeNum {
                font-size: 12px;
                color: #555555;
                text-align: left;
                line-height: 22px;
                font-weight: 400;
                margin-left: 10px;
              }
            }
          }
        }
      }
    }
  }
}
</style>
