<template>
  <div>
    <Header />
    <CenterPanel />
    <Footer />
  </div> 
</template>

<script>
// @ is an alias to /src
import Header from "@/components/Header.vue"
import CenterPanel from "@/components/CenterPanel.vue"
import Footer from "@/components/Footer.vue"

export default {
  name: "BookView",
  components: {
    Header,
    CenterPanel,
    Footer
  }
};
</script>

<style scoped>
</style>
