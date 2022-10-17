import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import BookView from "../views/BookView.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/books/:id",
    name: "BookView",
    component: BookView
  }
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
