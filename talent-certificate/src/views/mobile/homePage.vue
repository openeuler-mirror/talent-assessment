<template>
  <div class="homePage">
    <top-logo></top-logo>
    <top-nav></top-nav>
    <rz-system></rz-system>
    <rz-level></rz-level>
    <rz-process></rz-process>
    <rz-partner></rz-partner>
    <page-footer></page-footer>
  </div>
</template>

<script>
/**
 * @Author: zhshaof@isoftstone.com
 * @Version: 1.2
 * Company: 软通动力
 */
import TopLogo from "@/views/mobile/topLogo";
import TopNav from "@/views/mobile/topNav";
import rzSystem from "@/views/mobile/rzSystem";
import rzLevel from "@/views/mobile/rzLevel";
import rzProcess from "@/views/mobile/rzProcess";
import rzPartner from "@/views/mobile/rzPartner";
import pageFooter from "@/views/mobile/pageFooter";
export default {
  components: {
    TopLogo,
    TopNav,
    rzSystem,
    rzProcess,
    rzPartner,
    rzLevel,
    pageFooter,
  },
};
</script>

<style lang="scss" scoped>
.homePage {
  width: 100%;
  height: 100%;
}
</style>
