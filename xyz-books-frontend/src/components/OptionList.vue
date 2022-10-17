<template>
  <div class="w-100">
    <b-container>
      <b-row>
        <h3 class="left-padding-15 super-bold">{{ this.headerName }}</h3>
      </b-row>
      <b-row>
        <ul class="left-no-bullets">
          <li v-for="option in options" v-bind:key="option.name">
            <b-button class="text-bold" size="sm" variant="transparent" type="submit">{{ option.name }}</b-button>
          </li>
        </ul>
      </b-row>
    </b-container>
  </div>
</template>

<script>

export default {
  name: "OptionList",
  props: ["headerName", "options"]
};
</script>

<style scoped>
.super-bold {
  font-weight: 800;
}
h3.left-padding-15 {
  padding-left: 5px;
}
.left-no-bullets {
  text-align: left;
  list-style-type: none;
  padding: 0;
  margin: 0;
}
</style>
