<template>
  <div class="rz-process">
    <div class="rz-process-title">
      {{ title }}
    </div>
    <div class="rz-process-container">
      <div
        class="rz-process-box"
        v-for="item in processData"
        :key="item.id"
        @click="processClick(item.id)"
      >
        <div class="rz-process-top" :class="item.id">
          <img :src="item.src" alt="process" />
        </div>
        <div class="rz-process-bottom" :class="item.idText">
          {{ item.name }}
        </div>
      </div>
    </div>
  </div>
</template>

<script>
/**
 * @Author: zhshaof@isoftstone.com
 * @Version: 1.2
 * Company: 软通动力
 */
export default {
  name: "rzProcess",
  data() {
    return {
      title: "评定流程",
      processData: [
        {
          id: "first",
          idText: "first-text",
          name: "1.我要报名",
          src: require("../../assets/images/process01.svg"),
        },
        {
          id: "third",
          idText: "third-text",
          name: "2.课程学习",
          src: require("../../assets/images/process03.svg"),
        },
        // {
        //   id: "forth",
        //   idText: "forth-text",
        //   name: "3.预约考试",
        //   src: require("../../assets/images/process04.svg"),
        // },
        {
          id: "fifth",
          idText: "fifth-text",
          name: "3.参加考试",
          src: require("../../assets/images/process05.svg"),
        },
        {
          id: "sixth",
          idText: "sixth-text",
          name: "4.证书查询",
          src: require("../../assets/images/process06.svg"),
        },
      ],
    };
  },
  methods: {
    processClick(data) {
      if (data === "first") {
        this.$router.push("/signUp");
      } else if (data === "sixth") {
        // this.$router.push("/query");
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
.rz-process {
  padding: 0 1rem;
  .rz-process-title {
    margin-top: 2.5rem;
    margin-bottom: 1.5rem;
    font-size: 1rem;
    color: #000000;
    text-align: center;
    line-height: 1.5rem;
    //font-weight: 200;
    font-weight: 400;
  }
  .rz-process-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    .rz-process-box {
      .rz-process-top {
        background: #ffffff;
        box-shadow: 0 0.0625rem 0.3125rem 0 rgba(45, 47, 51, 0.1);
        width: 9.3125rem;
        height: 4.875rem;
        img {
          width: 6.5rem;
          height: 2.4375rem;
          padding: 1.1875rem 1.4375rem 1.25rem 1.375rem;
        }
      }
      .rz-process-bottom {
        font-size: 0.75rem;
        color: #000000;
        text-align: center;
        line-height: 1.125rem;
        font-weight: 500;
        margin-top: 0.5rem;
        margin-bottom: 1.5rem;
      }
      .first {
        border: 0.0625rem solid #002fa7;
        color: #002fa7;
      }
      .first-text {
        color: #002fa7;
      }
      .sixth {
        border: 0.0625rem solid #002fa7;
      }
      .sixth-text {
        color: #002fa7;
      }
    }
  }
}
</style>
