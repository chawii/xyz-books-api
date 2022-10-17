<template>
  <div class="container">
    <div class="row justify-content-center">
      <img :src="require(`@/assets/${this.image}`)" class="book-preview-size" />
    </div>
    <div class="row justify-content-center row-gap">
      <p class="title-font white-font">{{ this.title }}</p>
    </div>
    <div class="row justify-content-center ">
      <Button1 width="250px" height="30px" buttonName="View Book Details >" buttonColor="transparent" 
        textColor="#5ed2fb" fontSize="18px" :clickMethod=this.clickMethod :params=this.params />
    </div>
  </div>
</template>

<script>
import Button1 from "@/components/Button1.vue"

export default {
  name: "BookPreview",
  props: {
    title: String,
    image: String,
    isbn: String,
    clickMethod: Function
  },
  components: {
    Button1
  },
  data() {
    return {
      params: {
        isbn: this.isbn
      }
    }
  }
};
</script>

<style scoped>
.book-preview-size {
  height: 350px;
  width: 280px;
}
.title-font {
  font-weight: 900;
  font-size: 22px;
}
.row-gap {
  margin: 10px 0px 10px 0px;
}
.white-font {
  color: white;
}
</style>
