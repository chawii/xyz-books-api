<template>
  <div class="auto-scale">
    <b-button class="circle-button">
      <img :src="require(`@/assets/${this.imageUrl}`)" class="book-preview-size" />
    </b-button>
  </div>
</template>
  
<script>

export default {
  name: "CircleButton",
  props: {
   imageUrl: String
 }
};
</script>

<style scoped>
.auto-scale {
  text-align: center;
  width: 100%;
  height: 100%;
}
.circle-button {
  background-color: #f6efff;
  border: none;
  border-radius: 50%;
  width: 50px;
  height: 50px;
}
.circle-button img {
  width: 70%;
  height: 70%;
}
.btn:focus {
  outline: none;
  box-shadow: none;
}
.btn {
	box-shadow: none !important
}
</style>
  