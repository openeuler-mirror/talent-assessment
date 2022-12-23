<template>
  <div class="rzProcess">
    <div
      class="process-card"
      :class="item.id"
      v-for="item in processData"
      :key="item.id"
      @click="processClick(item.id)"
    >
      <div class="process-img" :class="item.id">
        <img :src="item.src" alt="" />
      </div>
      <div class="process-text">{{ item.name }}</div>
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
  name: "rzProcess",
  data() {
    return {
      processData: [
        {
          id: "first",
          name: "1.我要报名",
          src: require("../../assets/images/process01.svg"),
        },
        {
          id: "second",
          name: "2.参加培训",
          src: require("../../assets/images/process02.svg"),
        },
        {
          id: "third",
          name: "3.考场查询",
          src: require("../../assets/images/process03.svg"),
        },
        {
          id: "forth",
          name: "4.预约考试",
          src: require("../../assets/images/process04.svg"),
        },
        {
          id: "fifth",
          name: "5.参加考试",
          src: require("../../assets/images/process05.svg"),
        },
        {
          id: "sixth",
          name: "6.证书查询",
          src: require("../../assets/images/process06.svg"),
        },
      ],
    };
  },
  methods: {
    processClick(data) {
      if (data === "first") {
        let routeUrl = this.$router.resolve({
          path: "/signUp",
        });
        window.open(routeUrl.href, "_blank");
      } else if (data === "sixth") {
        // let routeUrl = this.$router.resolve({
        //   path: "/certificateQuery",
        // });
        // window.open(routeUrl.href, "_blank");
        window.open(
          "https://www.openeuler.org/zh/community/certification-services/search.html",
          "_blank"
        );
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.rzProcess {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  .process-card {
    padding: 0 23.5px 0 0;
    cursor: not-allowed;
    .process-img {
      display: flex;
      justify-content: center;
      align-items: center;
      width: 214px;
      height: 164px;
      border: 1px solid #f2f6fc;
      background-color: #ffffff;
      box-shadow: 0 1px 5px 0 rgba(45, 47, 51, 0.1);
    }
    .first {
      border: 1px solid #002fa7;
    }
    .first:hover {
      box-shadow: 0 6px 18px 0 rgba(0, 47, 167, 0.14);
    }
    .sixth {
      border: 1px solid #002fa7;
    }
    .sixth:hover {
      box-shadow: 0 6px 18px 0 rgba(0, 47, 167, 0.14);
    }
    .process-text {
      text-align: center;
      margin-bottom: 26px;
      padding-top: 18px;
      //padding: 18px 0;
      font-size: 18px;
      font-weight: 500;
    }
  }
  .process-card:last-child {
    padding: 0;
  }
  .first {
    color: #002fa7;
    cursor: pointer;
  }
  .sixth {
    color: #002fa7;
    cursor: pointer;
  }
}
@media only screen and (min-width: 724px) and (max-width: 1500px) {
  .rzProcess {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    max-width: 938px;
    margin-left: auto;
    margin-right: auto;
    .process-card {
      padding: 0 10px;
      cursor: not-allowed;
      .process-img {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 214px;
        height: 164px;
        border: 1px solid #f2f6fc;
        background-color: #ffffff;
        box-shadow: 0 1px 5px 0 rgba(45, 47, 51, 0.1);
      }
      .first {
        border: 1px solid #002fa7;
      }
      .first:hover {
        box-shadow: 0 6px 18px 0 rgba(0, 47, 167, 0.14);
      }
      .sixth {
        border: 1px solid #002fa7;
      }
      .sixth:hover {
        box-shadow: 0 6px 18px 0 rgba(0, 47, 167, 0.14);
      }
      .process-text {
        text-align: center;
        margin-bottom: 26px;
        padding-top: 18px;
        //padding: 18px 0;
        font-size: 18px;
        font-weight: 500;
      }
    }
    .process-card:last-child {
      padding: 0 10px;
    }
    .first {
      color: #002fa7;
      cursor: pointer;
    }
    .sixth {
      color: #002fa7;
      cursor: pointer;
    }
  }
}

@media only screen and (max-width: 723px) {
  .rzProcess {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    .process-card {
      padding: 0 10px;
      cursor: not-allowed;
      .process-img {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 214px;
        height: 164px;
        border: 1px solid #f2f6fc;
        background-color: #ffffff;
        box-shadow: 0 1px 5px 0 rgba(45, 47, 51, 0.1);
      }
      .first {
        border: 1px solid #002fa7;
      }
      .first:hover {
        box-shadow: 0 6px 18px 0 rgba(0, 47, 167, 0.14);
      }
      .sixth {
        border: 1px solid #002fa7;
      }
      .sixth:hover {
        box-shadow: 0 6px 18px 0 rgba(0, 47, 167, 0.14);
      }
      .process-text {
        text-align: center;
        margin-bottom: 26px;
        padding-top: 18px;
        //padding: 18px 0;
        font-size: 18px;
        font-weight: 500;
      }
    }
    .process-card:last-child {
      padding: 0 10px;
    }
    .first {
      color: #002fa7;
      cursor: pointer;
    }
    .sixth {
      color: #002fa7;
      cursor: pointer;
    }
  }
}
</style>
