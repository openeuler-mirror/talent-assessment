<template>
  <div class="rz-system">
    <div class="rz-system-title">
      {{ title }}
    </div>
    <div class="rz-system-first-text">
      {{ firstText }}
    </div>
    <div class="rz-system-second-text">
      {{ secondText }}
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
  name: "rzSystem",
  data() {
    return {
      title: "评定体系",
      firstText:
        "随着openEuler及其发行版本在各个行业使用量逐年增多，相关人才的评定诉求愈发强烈，故由openEuler社区联合伙伴共同打造openEuler人才评定体系。",
      secondText:
        "openEuler人才评定体系旨在帮助企业快速培养专业openEuler生态使用人才；推动相关从业人员高效获得权威资质评定；促使技术爱好者踊跃融入社区技术生态建设。",
    };
  },
};
</script>

<style lang="scss" scoped>
.rz-system {
  padding: 0 1rem;
  .rz-system-title {
    margin-top: 2.5rem;
    margin-bottom: 1rem;
    font-size: 1rem;
    color: #000000;
    text-align: center;
    line-height: 1.5rem;
    //font-weight: 200;
    font-weight: 400;
  }
  .rz-system-first-text {
    font-size: 0.75rem;
    color: #000000;
    line-height: 1.125rem;
    font-weight: 400;
    white-space: normal;
    word-break: break-all;
  }
  .rz-system-second-text {
    font-size: 0.75rem;
    color: #000000;
    line-height: 1.125rem;
    font-weight: 400;
    white-space: normal;
    word-break: break-all;
    margin-top: 1rem;
  }
}
</style>
