<template>
  <div>
    <b-button id="rounded-button" size="sm" type="submit" @click="clickMethod(params)">
      <div class="text-color">{{ customButtonName }}</div>
    </b-button>
  </div>
</template>

<script>

export default {
  name: "Button1",
  props: {
    params: Object,
    buttonName: String,
    height: String,
    width: String,
    fontSize: String,
    buttonColor: String,
    textColor: String,
    clickMethod: Function
  },
  data() {
    return {
      customButtonName: this.buttonName || "Button",
      customHeight: this.height || "100px",
      customWidth: this.width || "100px",
      customColor: this.buttonColor || "grey",
      customTextColor: this.textColor || "white",
      customFontWeight: this.fontWeight || 600,
      customFontSize: this.fontSize || "15px"
    }
  }
};
</script>

<style scoped>
#rounded-button {
  border-radius: 7px;
  border: none;
  background-color: v-bind(customColor);
  height: v-bind(customHeight);
  width: v-bind(customWidth);
  font-size: v-bind(customFontSize);
  font-weight: v-bind(customFontWeight);
}
.text-color {
  color: v-bind(customTextColor);
}
</style>
