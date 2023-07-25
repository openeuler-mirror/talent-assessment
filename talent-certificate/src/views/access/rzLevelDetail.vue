<template>
  <div class="reLevelDetail">
    <div class="page-header">
      <div class="page-header-logo" @click="pageJump">
        <img src="../../assets/images/logo.png" alt="" />
      </div>
    </div>
    <div
      class="detailContent"
      v-for="(cont, index) in courseContent"
      :key="index"
    >
      <div class="detailTitle">{{ cont.titleName }}</div>
      <div class="secondaryTitle">{{ cont.secondaryTitle }}</div>
      <div class="page-main-divider"></div>
      <!-- 课程介绍 -->
      <div class="detailIntroduce">
        <div class="title">{{ courseIntro }}</div>
        <div class="content">{{ cont.courseDetailIntro }}</div>
      </div>
      <!-- 课程链接 -->
      <div class="detailLink">
        <div class="title">{{ courseLink }}</div>
        <!-- <div class="content"> {{ courseLinkContent }} </div> -->
        <div>
          <a
            :style="{
              'font-size': cont.outlineArr.length > 0 ? '14px' : '18px',
            }"
            class="content"
            :href="cont.courseLinkContent"
            target="_blank"
          >
            {{ cont.courseLinkContent }}
          </a>
        </div>
      </div>
      <!-- 课程大纲 -->
      <div class="detailOutline" v-if="cont.outlineArr.length">
        <div class="title">{{ courseOutline }}</div>
        <div class="content">
          <div
            v-for="(item, index) in cont.outlineArr"
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
      courseIntro: "课程介绍",
      courseLink: "课程链接",
      courseOutline: "课程大纲",
      courseContent: [
        {
          titleName: "",
          secondaryTitle: "",
          courseDetailIntro: "",
          courseLinkContent: "",
          outlineArr: [],
        },
      ],
    };
  },
  created() {
    if (this.$route.query.type === "first") {
      this.courseContent = [
        {
          titleName: "OECA课程",
          secondaryTitle: "openEuler Certified Associate",
          courseDetailIntro:
            "社区根据openEuler技术发展路线与市场需求，规划设计了《openEuler OECA认证课程》，本课程以内部原理、实践实战为主，理论与实践相结合。课程内容涵盖操作系统安装升级、系统服务配置和管理、ssh管理及安全、用户和群组管理等课程内容。",
          courseLinkContent:
            "https://hiss.shixizhi.huawei.com/center/privateCenter.htm?schoolId=1643780836745113602&type=studyCenter_LearningTask&sxz-lang=zh_CN&mapDetail=3&mapDetailId=1675057597212368897",
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
        },
      ];
    } else {
      this.courseContent = [
        {
          titleName: "OECP课程",
          secondaryTitle: "openEuler Certified Professional",
          courseDetailIntro:
            "本课程定位于培养具备openEuler操作系统管理及应用的高级工程师。通过本课程的学习，将掌握openEuler操作系统常用服务配置、安全管理、故障处理工具，以及虚拟化、容器化基础知识等。课程中也包含众多实践操作，边学边练，理论与实践相互印证，提升知识掌握深度。",
          courseLinkContent: "课程正在开发中，敬请期待",
          outlineArr: [],
        },
        {
          titleName: "OECP-M课程",
          secondaryTitle: "openEuler Certified Professional - Migrate",
          courseDetailIntro:
            "本课程定位于培养具备openEuler迁移实践操作能力的高级工程师。通过本课程的学习，将了解openEuler迁移的背景、流程、方案、工具等内容。结合迁移实践练习及众多迁移案例剖析，能够更好解决迁移现场遇到的问题。",
          courseLinkContent:
            "https://c0605e03bb6b40dca9cd34ab5b3fb1f8.shixizhi.huawei.com/center/privateCenter.htm?schoolId=1643780836745113602&type=studyCenter_LearningTask&sxz-lang=zh_CN&mapDetail=3&mapDetailId=1659085047015194625",
          outlineArr: [
            {
              serialNum: "01",
              name: "迁移解决方案介绍",
              imgSrc: require("../../assets/images/time.png"),
              timeNum: "1.0小时",
            },
            {
              serialNum: "02",
              name: "迁移移植适配",
              imgSrc: require("../../assets/images/time.png"),
              timeNum: "1.0小时",
            },
            {
              serialNum: "03",
              name: "迁移工具培训",
              imgSrc: require("../../assets/images/time.png"),
              timeNum: "1.0小时",
            },
            {
              serialNum: "04",
              name: "迁移常见案例",
              imgSrc: require("../../assets/images/time.png"),
              timeNum: "1.0小时",
            },
          ],
        },
      ];
    }
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
    .secondaryTitle {
      font-size: 20px;
      font-weight: 500;
    }
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
      margin: 25px 0 40px;
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
