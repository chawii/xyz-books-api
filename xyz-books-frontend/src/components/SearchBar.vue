<template>
  <div>
    <b-form-input size="sm" class="mr-sm-2 search-field" placeholder="Search" v-model="myInput" @keydown.enter="searchBook"></b-form-input>
  </div>
</template>

<script>

export default {
  name: "SearchBar",
  data() {
    return {
      myInput: ""
    }
  },
  methods: {
    searchBook() {
      this.$router.push({ name: 'BookView', params: { id: this.myInput }})
    }
  }
};
</script>

<style scoped>
.search-field {
  border-radius: 20px;
  width: 250px;
}
</style>
