<template>
  <div class="footer sticky-bottom">
    <b-container class="bv-example-row align-left">
      <b-row>
        <b-col class="left-panel">
          <b-row class="b-row-1"><b-img src="@/assets/sample logo.svg" fluid alt="Responsive image"></b-img></b-row>
          <b-row class="b-row-1"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a velit mauris. Proin dui dui, pharetra at purus quis</p></b-row>
          <b-row class="b-row-1"><SearchBar class="search-bar"/></b-row>
        </b-col>
        <b-col>
          <OptionList class="b-row-1 left-margin" headerName="Menu" 
            v-bind:options="[
              { name: 'Shop All', url: '' },
              { name: 'About Us', url: '' },
              { name: 'Community', url: '' },
              { name: 'FAQs', url: '' }
            ]" 
          />
        </b-col>
        <b-col>
          <OptionList class="b-row-1" headerName="Support" 
            v-bind:options="[
              { name: 'Shipping & Returns', url: '' },
              { name: 'Help & FAQ', url: '' },
              { name: 'Terms & Conditions', url: '' },
              { name: 'Privacy Policy', url: '' },
              { name: 'Contact', url: '' },
              { name: 'Login', url: '' }
            ]" 
          />
        </b-col>
        <b-col>
          <OptionList class="b-row-1" headerName="Resources" 
            v-bind:options="[
              { name: 'Shipping & Returns', url: '' },
              { name: 'Help & FAQ', url: '' },
              { name: 'Terms & Conditions', url: '' },
              { name: 'Privacy Policy', url: '' },
              { name: 'Contact', url: '' },
              { name: 'Login', url: '' }
            ]" 
          />
        </b-col>
      </b-row>
      <b-row>
        <b-col class="copy-right">ⓒ 2022 Brainly.</b-col>
        <b-col class="right-align">
          <b-row>
            <b-col><CircleButton imageUrl="facebook_logo.svg" /></b-col>
            <b-col><CircleButton imageUrl="linkedin_logo.svg" /></b-col>
            <b-col><CircleButton imageUrl="twitter_logo.svg" /></b-col>
          </b-row>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>
  
  <script>
  import SearchBar from "@/components/SearchBar.vue"
  import CircleButton from "@/components/CircleButton.vue"
  import OptionList from "@/components/OptionList.vue"
  
  export default {
    name: "Footer",
    components: {
      SearchBar,
      CircleButton,
      OptionList
    },
    data() {
      return {
        myInput: "",
        options: [
          {
            name: "Test1"
          },
          {
            name: "Test2"
          }
        ]
      }
    },
    methods: {
      searchBook() {
        
      }
    }
  };
  </script>
  
  <style scoped>
  .footer {
    margin: 100px 0px 50px 0px;
  }
  .right-align {
    text-align: right;
  }
  .left-panel {
    text-align: left;
    margin-right: 100px;
  }
  .search-bar {
    margin: 0px 0px 0px 0px;
    width: 250px;
  }
  .b-row-1 {
    margin: 30px 0px 30px 0px;
  }
  .copy-right {
    text-align: left;
    margin-right: 50%;
  }
  </style>
  