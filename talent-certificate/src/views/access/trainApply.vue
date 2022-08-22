<template>
  <div class="page-main">
    <div class="page-breadcrumb">
      <el-breadcrumb
        separator-class="el-icon-arrow-right"
        style="font-size: 15px"
      >
        <el-breadcrumb-item :to="{ path: '/' }">人才评定</el-breadcrumb-item>
        <el-breadcrumb-item>我要报名</el-breadcrumb-item>
      </el-breadcrumb>
    </div>
    <div class="process-card">
      <el-card class="box-card">
        <div slot="header" class="clearfix">
          <span>{{ titleName }}</span>
        </div>
        <div class="process-list">
          <div class="list-title">合作委托声明</div>
          <div class="list-content">
            为方便对openEuler社区认证学员的培训、考试，openEuler社区优选业界资深操作系统培训、考试机构。openEuler社区已经对认证的合作伙伴做相关授权。
          </div>
        </div>
        <div class="process-list">
          <div class="list-title">报名入口</div>
          <div class="list-content">
            当前已经授权如下合作伙伴，选择任一合作伙伴即可跳转至认证报名页面：
          </div>
          <div class="list-partner">
            <div class="list-img">
              <img
                class="img-style"
                src="../../assets/images/rtdl.png"
                alt="partnerImg"
              />
            </div>
          </div>
        </div>
      </el-card>
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
  name: "trainApply",
  data() {
    return {
      titleName: "我要报名",
    };
  },
};
</script>

<style>
.process-card .clearfix:before,
.process-card .clearfix:after {
  display: table;
  content: "";
}
.process-card .clearfix:after {
  clear: both;
}
</style>

<style lang="scss" scoped>
.page-main {
  width: 73%;
  margin: 0 auto;
  .page-breadcrumb {
    margin: 45px 0;
  }
  .process-card {
    .clearfix {
      font-size: 30px;
      padding: 20px 0;
    }
    .process-list {
      padding: 20px 0 10px 0;
      .list-title {
        font-weight: 600;
        font-size: 17px;
      }
      .list-content {
        padding: 20px 0;
        white-space: normal;
        word-break: break-all;
        line-height: 30px;
        color: #232323;
      }
      .list-partner {
        .list-img {
          box-shadow: 0 6px 30px 0 rgb(0 0 0 / 10%);
          display: flex;
          width: 240px;
          height: 100px;
          cursor: pointer;
          .img-style {
            width: 100%;
            height: 100%;
            justify-content: center;
            align-items: center;
          }
        }
      }
    }
  }
}
</style>
