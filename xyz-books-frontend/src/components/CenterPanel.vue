<template>
  <div style="w-auto">
    <div>
    <h1 class="search-result-text bold">Search Result</h1>
    </div>
    <div style="w-auto">
      <div style="margin-top: 50px">
        <b-container class="bv-example-row align-left">
          <b-row>
            <b-col style="text-align: right; margin-right: 30px">
              <img :src="require(`@/assets/${this.imageUrl}`)" class="book-preview-size" />
            </b-col>
            <b-col>
              <b-row style="margin-top: 20px"><b-card-text><h4 class="super-bold">{{ this.title }}</h4></b-card-text></b-row>
              <b-row style="margin-bottom: 25px"><b-card-text><h6 class="bold">by {{ this.authorNames }}</h6></b-card-text></b-row>
              <b-row><b-card-text><h6 class="bold">Edition: {{ this.edition }}</h6></b-card-text></b-row>
              <b-row><b-card-text><h6 class="bold">Price: {{ this.price }}</h6></b-card-text></b-row>
              <b-row><b-card-text><h6 class="bold">ISBN: {{ this.isbn }}</h6></b-card-text></b-row>
              <b-row><b-card-text><h6 class="bold">Publication Year: {{ this.publicationYear }}</h6></b-card-text></b-row>
              <b-row><b-card-text><h6 class="bold">Publisher: {{ this.publisherName }}</h6></b-card-text></b-row>
            </b-col>
          </b-row>
        </b-container>
      </div> 
    </div>
  </div>
</template>

<script>
import axios from "axios"

export default {
  name: "CenterPanel",
  data() {
    return {
      id: this.$route.params.id,
      title: this.title,
      authorNames: this.authorNames,
      edition: this.edition,
      price: this.price,
      isbn: this.isbn,
      publicationYear: this.publicationYear,
      publisherName: this.publisherName,
      imageUrl: this.imageUrl
    }
  },
  created() {
    axios.get('http://127.0.0.1:3000/books/' + this.$route.params.id) 
      .then((response) => {
        console.log(response.data)
        this.title = response.data.title
        this.authorNames = response.data.author_names
        this.edition = response.data.edition
        this.price = response.data.price
        this.isbn = response.data.isbn_13
        this.publicationYear = response.data.publication_year
        this.publisherName = response.data.publisher_name
        this.imageUrl = response.data.image_url
      })
      .catch((error) => {
        console.log(error)
      })
  }
};
</script>

<style scoped>
.center {
  text-align: center;
}
.align-left {
  text-align: left;
}
.bold {
  font-weight: bold;
}
.super-bold {
  font-weight: 900;
}
.search-result-text {
  margin: 50px 0px 0px 100px;
  text-align: left;
}
.card {
  margin-top: 50px;
  border: none;
}
.book-preview-size {
  height: 300px;
  width: 225px;
}
</style>
