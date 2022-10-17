<template>
  <div>
    <div class="container">
      <div class="row">
        <div class="col col-gap">
          <img :src="require(`@/assets/${this.image}`)" class="logo" />
          <h5>{{ this.partnerName }}</h5>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: "PartnerItem",
  props: {
    partnerName: String,
    image: String
  }
 }
</script>

<style scoped>
.logo {
  width: 50px;
  height: 50px;
  position:absolute;
  margin-left: -90px;
  margin-top: -13px;
}
.super-bold {
  font-weight: 900;
}
.col-gap {
  margin: 20px 0px 20px 0px
}
</style>
