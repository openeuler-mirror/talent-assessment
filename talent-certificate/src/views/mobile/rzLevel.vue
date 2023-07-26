<template>
  <div class="rzLevel">
    <div class="rz-level-title">
      {{ title }}
    </div>
    <div class="item-box">
      <div
        v-for="(item, index) in levelArr"
        :key="index"
        class="item"
        :class="[item.id, index != 0 ? 'item-top-margin' : '']"
        :id="getId(index)"
        @click="item.id !== 'OECE' ? itemClickOpt(item) : ''"
      >
        <!-- 上方区域 -->
        <div class="item-top">
          <div class="item-top-left">
            <div
              :class="
                item.level === '高级'
                  ? 'item-senior-level'
                  : item.level === '中级'
                  ? 'item-middle-level'
                  : 'item-primary-level'
              "
            >
              {{ item.level }}
            </div>
            <div class="item-name">{{ item.name }}</div>
          </div>

          <div class="item-top-right">
            <div class="item-detail" v-if="index !== 2">
              <span> {{ item.detail }} </span>
              <img
                src="../../assets/images/arrow-right.png"
                class="item-right-img"
              />
            </div>
            <div class="item-detail" v-else>
              <span> {{ item.detail }} </span>
            </div>
          </div>
        </div>
        <!-- 下方区域 -->
        <div class="item-bottom">
          <div class="item-content">{{ item.content }}</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
/**
 * @Author: danliuf@isoftstone.com
 * @Version: 1.2
 * Company: 软通动力
 */
export default {
  data() {
    return {
      title: "评定等级",
      levelArr: [
        {
          id: "OECA",
          level: "初级",
          name: "OECA",
          content:
            "面向openEuler操作系统的管理服务人员。能够熟练掌握OS安装、升级、常用服务配置、管理等基础使用能力；以及熟悉服务规范、服务礼仪、服务安全红线、服务文档编写等专业能力。",
          detail: "查看详情",
        },
        {
          id: "OECP",
          level: "中级",
          name: "OECP",
          content:
            "面向openEuler操作系统的中级服务人员、开发人员。对于服务人员需要能够通过日志、配置做问题诊断和处理且运维过程中可以熟练使用shell/python/perl命令及脚本编写。对于开发人员需要熟悉主流大型软件编写语言（C/C++/JAVA/python/go等），掌握linux内核模块开发技能，参与到openEuler社区各开源项目代码提交、问题交流。",
          detail: "查看详情",
        },
        {
          id: "OECE",
          level: "高级",
          name: "OECE",
          content:
            "面向openEuler操作系统的高级服务、开发人员。其中服务人员需要了解openEuler内核原理及各种接口使用，能够通过跟踪调试代码定位分析问题；规划并看护运维工具，且能够设计服务流程，提升交付、运维效率。开发人员需要能够对软件架构做看护与重构，对于代码做review以及PR合入；洞察业界技术趋势识别关键技术并在社区做引入。",
          detail: "敬请期待详情",
        },
      ],
    };
  },
  mounted() {},
  methods: {
    getId(pIndex) {
      return "cardNumber" + pIndex;
    },
    itemClickOpt(row) {
      this.$router.push({ path: "/levelDetail", query: { type: row.id } });
    },
  },
};
</script>

<style lang="scss" scoped>
.rzLevel {
  .rz-level-title {
    margin-top: 2.5rem;
    margin-bottom: 1rem;
    font-size: 1rem;
    color: #000000;
    text-align: center;
    line-height: 1.5rem;
    //font-weight: 200;
    font-weight: 400;
  }
  .item-box {
    display: flex;
    flex-direction: column;
    // align-items: center;
    padding: 0 1rem;
    .item-top-margin {
      margin-top: 1.5rem;
    }
    .item {
      // min-height: 9.6875rem;
      background-color: #fff;
      color: rgba(0, 0, 0, 0.5);
      transition: box-shadow 1s;
      display: flex;
      flex-direction: column;
      justify-content: center;
      box-shadow: 0 0.0625rem 0.3125rem 0 rgba(45, 47, 51, 0.1);
      .item-top {
        display: flex;
        // height: 1.3125rem;
        max-height: 1.4375rem;
        align-items: center;
        background-color: #002fa7;
        color: #fff;
        padding: 0.875rem 1rem;
        .item-top-left {
          display: flex;
          flex: 1;
          align-items: center;
          font-size: 0.75rem;
          color: #ffffff;
          text-align: center;
          line-height: 1.25rem;
          font-weight: 500;
          .item-primary-level {
            width: 3.3125rem;
            height: 1.4375rem;
            background: #18c6da;
            display: flex;
            justify-content: center;
            align-items: center;
          }
          .item-middle-level {
            width: 3.3125rem;
            height: 1.4375rem;
            background: #6dc336;
            display: flex;
            justify-content: center;
            align-items: center;
          }
          .item-senior-level {
            width: 3.3125rem;
            height: 1.4375rem;
            background: #feb32a;
            display: flex;
            justify-content: center;
            align-items: center;
          }
          .item-name {
            margin-left: 0.9375rem;
            font-size: 1rem;
            color: #ffffff;
            line-height: 1.375rem;
            font-weight: 500;
          }
        }
        .item-top-right {
          display: flex;
          flex: 1;
          justify-content: flex-end;
          align-items: center;
          .item-detail {
            display: flex;
            align-items: center;
            font-size: 0.9rem;
            color: #ffffff;
            line-height: 1.125rem;
            font-weight: 400;
            .item-right-img {
              width: 0.6875rem;
              height: 0.6875rem;
              margin-left: 0.5rem;
            }
          }
        }
      }
      .item-bottom {
        height: calc(100% - 3.1875rem);
        padding: 1rem 1rem;
        background: #ffffff;
        .item-content {
          //   padding: 2.5rem 0rem;
          display: flex;
          align-items: center;
          overflow: hidden;
          text-overflow: ellipsis;
          font-size: 0.75rem;
          color: #000000;
          line-height: 1.125rem;
          font-weight: 400;
          white-space: normal;
          word-break: break-all;
        }
      }
    }
    .first:hover {
      box-shadow: 0rem 0.375rem 1.125rem 0 rgba(0, 47, 167, 0.14);
    }
  }
}
</style>
