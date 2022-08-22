/**
 * @Author: zhshaof@isoftstone.com
 * @Version: 1.1
 * Company: 软通动力
 */
import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);

const routesPc = [
  {
    path: "/",
    name: "introduce",
    component: () => import("../views/access/introducePage.vue"),
  },
  {
    path: "/signUp",
    name: "signUp",
    component: () => import("../views/access/signUp.vue"),
  },
  {
    path: "/certificateQuery",
    name: "certificateQuery",
    component: () => import("../views/access/certificateQuery.vue"),
  },
  {
    path: "/levelDetail",
    name: "levelDetail",
    component: () => import("../views/access/rzLevelDetail.vue"),
  },
];
const routesMb = [
  {
    path: "/",
    name: "introduce",
    component: () => import("../views/mobile/homePage.vue"),
  },
  {
    path: "/levelDetail",
    name: "levelDetail",
    component: () => import("../views/mobile/rzLevelDetail"),
  },
  {
    path: "/signUp",
    name: "signUp",
    component: () => import("../views/mobile/rzSignUp.vue"),
  },
  {
    path: "/query",
    name: "query",
    component: () => import("../views/mobile/rzQuery.vue"),
  },
];

let routes = [];
if (
  navigator.userAgent.match(
    /(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i
  )
) {
  routes = routesMb;
} else {
  routes = routesPc;
}

const router = new VueRouter({
  routes,
});

export default router;
