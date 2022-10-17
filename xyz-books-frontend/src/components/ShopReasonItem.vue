<template>
  <div class="mw-100 mh-100">
    <div class="container text-left">
      <div class="row row-gap">
        <img :src="require(`@/assets/${this.image}`)" class="logo" />
      </div>
      <div class="row row-gap">
        <h5 class="header white-font">{{ this.header }}</h5>
      </div>
      <div class="row row-gap white-font">
        <p class="description">{{ this.description }}</p>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: "ShopReasonItem",
  props: {
    image: String,
    header: String,
    description: String
  }
 }
</script>

<style scoped>
.logo {
  width: 50px;
  height: 50px;
}
.header {
  font-weight: bold;
}
.description {
  font-weight: normal;
}
.row-gap {
  padding: 10px 0px 10px 0px;
}
.white-font {
  color: white;
}

</style>