<template>
  <div>
    <div>
      <b-navbar class="banner">
        <b-navbar-nav class="mx-auto">
          <b-nav-text class="white-text">Save up to $500 per year on millions of book titles!</b-nav-text>
        </b-navbar-nav>
      </b-navbar>
    </div>
    <div>
      <b-navbar toggleable="lg" variant="transparent">
        <b-navbar-brand href="#">
          <b-img src="@/assets/sample logo.svg" fluid alt="Responsive image"></b-img>
        </b-navbar-brand>

        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <b-collapse id="nav-collapse" is-nav>
          <b-navbar-nav>
            <b-nav-form style="margin: 0px 20px 0px 20px;">
              <SearchBar />
            </b-nav-form>
          </b-navbar-nav>

          <!-- Right aligned nav items -->
          <b-navbar-nav class="ml-auto">
            <b-button class="text-bold" size="sm" variant="transparent" type="submit" @click="goHomepage">Home</b-button>
            <b-button class="text-bold" size="sm" variant="transparent" type="submit">Rent Textbooks</b-button>
            <b-button class="text-bold" size="sm" variant="transparent" type="submit">Buy Textbooks</b-button>
            <b-button class="text-bold" size="sm" variant="transparent" type="submit">Sell Textbooks</b-button>
            <div class="text-ligther" style="margin: 0px 20px 0px 10px">
              <b-img src="@/assets/Icon feather-globe.svg"></b-img> En
            </div>
            <Button1 buttonName="Contact" buttonColor="#6160f6" width="100px" height="35px"/>
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import SearchBar from "@/components/SearchBar.vue"
import Button1 from "@/components/Button1.vue"

export default {
  name: "Header",
  components: {
    SearchBar,
    Button1
  },
  methods: {
    goHomepage() {
      this.$router.push({ name: "Home", params: {}})
    }
  }
};
</script>

<style scoped>
.banner {
  background-image: url('~@/assets/Mask Group 4.png');
  background-size: contain;
}
.white-text {
  color: #ffffff;
  text-align: center;
}
.text-ligther {
  font-weight: 500;
}
.text-bold {
  font-weight: bold;
}
</style>
