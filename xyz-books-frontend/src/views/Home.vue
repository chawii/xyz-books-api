<template>
  <div>
    <div class="mw-100 mh-100">
      <div id="background" style="max-width: 100%">
        <Header />
        <b-container class="mw-100 mh-100">
          <b-row class="mw-100 mh-100">
            <div class="container-1 margin-top-100">
              <b-container class="mw-100 mh-100" style="padding: 0px 100px 0px 100px">
                <b-row>
                  <b-col>
                    <b-row class="b-row-gap-1">
                      <h1 class="text-left super-bold my-3 font-1">The Cheapest<br>Textbooks</h1>
                    </b-row>
                    <b-row class="b-row-gap-1">
                      <h3 class="text-left super-bold my-3 purple-color">Save Up To 90% on Millions<br>Of Titles</h3>
                    </b-row>
                    <b-row class="b-row-gap-1">
                      <h5 class="text-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in libero ac tortor dignissim bibendum sit amet et lectus. Praesent dui lacus, pellentesque ullamcorper erat sed, pharetra pretium augue.</h5>
                    </b-row>
                    <b-row class="b-row-gap-2">
                      <Button1 buttonName="Get Started" height="50px" width="200px" buttonColor="#6160f6" fontSize="20px" />
                    </b-row>
                  </b-col>
                  <b-col>
                    <b-img src="@/assets/hero illustration.svg" fluid alt="Responsive image"></b-img>
                  </b-col>
                </b-row>
              </b-container>
            </div>
          </b-row>
          <b-row class="mw-100 mh-100">
            <div class="container-1 margin-top-100">
              <b-container class="mw-100 mh-100" style="padding: 0px 50px 0px 50px">
                <b-row>
                  <b-col>
                    <b-img src="@/assets/Group 13597.png" fluid alt="Responsive image"></b-img>
                  </b-col>
                  <b-col>
                    <b-row class="b-row-gap-1"> 
                      <h1 class="text-left text-justify super-bold my-3 white">Our Commitment</h1>
                    </b-row>
                    <b-row class="b-row-ga-1">
                      <h5 class="text-justify white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in libero ac tortor dignissim bibendum sit amet et lectus. Praesent dui lacus, pellentesque ullamcorper erat sed, pharetra pretium augue.</h5>
                    </b-row>
                    <b-row class="b-row-gap-2">
                      <Button1 buttonName="Learn More >" height="50px" width="200px" textColor="#5ed2fb" buttonColor="#141d54" fontSize="20px" />
                    </b-row>
                  </b-col>
                </b-row>
              </b-container>
            </div>
          </b-row>
          <b-row class="mw-100 mh-100" style="margin: 200px">
            <b-container>
              <b-row class="row justify-content-center b-row-gap-2">
                <h2 class="super-bold">Trusted By Awesome Clients</h2> 
              </b-row>
              <b-row class="row justify-content-center b-row-gap-2">
                <b-col><PartnerItem partnerName="Binance" image="Binance.svg"  /></b-col>
                <b-col><PartnerItem partnerName="Bitcoin" image="Bitcoin.svg"  /></b-col>
                <b-col><PartnerItem partnerName="Solana" image="Solana.svg"  /></b-col>
                <b-col><PartnerItem partnerName="Ethereum" image="Ethereum.svg"  /></b-col>
                <b-col><PartnerItem partnerName="Tether" image="Tether.svg"  /></b-col>
                <b-col><PartnerItem partnerName="XRP" image="Xrp.svg"  /></b-col>
              </b-row>
            </b-container>
          </b-row>
          <b-row class="mw-100 mh-100" style="margin-top: 150px">
            <b-container>
              <b-row class="row justify-content-center">
                <h1 class="super-bold">Explore Our Books</h1>
              </b-row>
              <b-row class="row justify-content-center b-row-gap-1">
                <h5>With our dedicated customer support team, you can rest easy knowing that we're doing everything<br>we can to save your time, money, and stress.</h5>
              </b-row>
              <b-row class="row justify-content-center b-row-gap-2">
                <div v-for="book in bookPreviews" class="col" :key="book.id">
                  <BookPreview :title=book.title :image=book.image :isbn="book.isbn13" :clickMethod="gotoBookView" />
                </div>
              </b-row>
            </b-container>
          </b-row>
          <b-row style="margin-top: 100px">
            <div id=skewed-blue-bg></div>
            <b-container>
              <b-row class="b-row-gap-1">
                <h6 style="color: #f5c644; font-weight: bold;">LOREM IPSUM</h6>
              </b-row>
              <b-row class="b-row-gap-1">
                <h2 class="super-bold white">3 Reasons To Shop With Us</h2>
              </b-row>
              <b-row class="b-row-gap-2">
                <div v-for="shopItem in shopItemReasons" class="col" :key="shopItem.id">
                  <ShopReasonItem :image=shopItem.image :header=shopItem.header :description=shopItem.description />
                </div>
              </b-row>
            </b-container>
          </b-row>
          <b-row style="margin-top: 200px">
            <b-container>
              <b-row class="row justify-content-center">
                <h3 style="font-weight: bold">Andrew Santellan</h3>
              </b-row>
              <b-row class="row justify-content-center">
                <h6 style="color: #5ed2fb">Product Manager, Binance</h6>
              </b-row>
              <b-row class="row justify-content-center" style="padding-left: 40px">
                <PartnerItem partnerName="Binance" image="Binance.svg"  />
              </b-row>
              <b-row class="row justify-content-center" style="margin-top: 100px">
                <b-img src="@/assets/user.png" fluid alt="Responsive image" class="user-img"></b-img>
                <!-- <div class="rounded-edge-square-back" /> -->
                <b-container class="comment-box" style="box-shadow: 0px -16px #daebfe;">
                  <b-row class="row justify-content-center">
                    <h5 class="comment-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit arcu at ex malesuada, vitae malesuada nisl vulputate. Morbi accumsan ante felis, a scelerisque nulla cursus eget. Morbi non augue vel sem commodo sagittis. Donec ut purus ut neque facilisis consequat. Pellentesque dapibus urna lacus, et suscipit neque dictum eget. Nullam non placerat lorem, at facilisis arcu.</h5>
                  </b-row>
                  <b-row class="row justify-content-center">
                    <b-img src="@/assets/star.svg" fluid alt="Responsive image" style="padding-bottom: 50px"></b-img>
                  </b-row>
                </b-container>
              </b-row>
            </b-container>
          </b-row>
          <b-row>
            <FreqAskedQuestions  />
          </b-row>
          <b-row class="row justify-content-center">
            <div>
              <Footer />
            </div>
          </b-row>
        </b-container>
      </div>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import Header from "@/components/Header.vue"
import Footer from "@/components/Footer.vue"
import Button1 from "@/components/Button1.vue"
import PartnerItem from "@/components/PartnerItem.vue"
import BookPreview from "@/components/BookPreview.vue"
import ShopReasonItem from "@/components/ShopReasonItem.vue"
import FreqAskedQuestions from "@/components/FreqAskedQuestions.vue"

export default {
  name: "Home",
  components: {
    Header,
    Footer,
    Button1,
    PartnerItem,
    BookPreview,
    ShopReasonItem,
    FreqAskedQuestions
  },
  data() {
    return {
      bookPreviews: [
        {
          id: 1,
          title: "Doughnuts & Doom",
          image: "doughnuts & Doom.png",
          isbn13: "978-1-891830-85-3" 
        },
        {
          id: 2,
          title: "Cosmoknights",
          image: "The Bend of Luck.png",
          isbn13: "978-1-60309-454-2" 
        },
        {
          id: 3,
          title: "The Underwater Welder",
          image: "The Underwater Welder.png",
          isbn13: "978-1-60309-398-9" 
        },
      ],
      shopItemReasons: [
        {
          id: 1,
          image: "package-box.svg",
          header: "All textbook rental comes with free return shipping.",
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur, urna sed condimentum lobortis, lacus purus auctor neque, a tempus risus ex nec augue. Donec ultricies nisi ut efficitur feugiat"
        },
        {
          id: 2,
          image: "help.svg",
          header: "Dedicated customer support and help portal.",
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur, urna sed condimentum lobortis, lacus purus auctor neque, a tempus risus ex nec augue. Donec ultricies nisi ut efficitur feugiat"
        },
        {
          id: 3,
          image: "piggy-bank.svg",
          header: "Buy or rent cheap textbooks & save up to $500 per year!",
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur, urna sed condimentum lobortis, lacus purus auctor neque, a tempus risus ex nec augue. Donec ultricies nisi ut efficitur feugiat"
        }
      ]
    }
  },
  methods: {
    gotoBookView(data) {
      this.$router.push({ name: 'BookView', params: { id: data.isbn }})
    }
  }
};
</script>

<style scoped>
#background {
  margin: auto;
  height: 1800px;
  background-image: url('~@/assets/banner bg.png');
  background-size: cover;
  background-repeat: no-repeat;
}
#skewed-blue-bg {
  background-color: #071a37;
  transform: skew(0deg, -3.5deg);
  width: 1950px;
  height: 850px;
  margin-left: -150px;
  margin-top: -250px;
  position: absolute;
  z-index: -1;
}
.container-1 {
  height: 500px;
}
.margin-top-100 {
  margin-top: 100px;
}
.super-bold {
  font-weight: 900;
}
.font-1 {
  font-family:Verdana, Geneva, Tahoma, sans-serif;
  font-size: 45px;
}
.purple-color {
  color:#6160f6;
}
.white {
  color:white;
}
.b-row-gap-1 {
  margin: 15px 0px 15px 0px;
}
.b-row-gap-2 {
  margin: 40px 0px 0px 0px;
}
.rounded-edge-square-front {
  background-color: #4298f7;
  width: 800px;
  height: 320px;
  border-radius: 20px;
  border: none;
  z-index: -1;
}
.rounded-edge-square-back {
  background-color: #daebfe;
  position: absolute;
  width: 1000px;
  height: 100px;
  margin-top: -20px;
  border-radius: 10px;
  border: none;
  z-index: -2;
}
.comment-box {
  background-color: #4298f7;
  border-radius: 20px;
}
.comment-text {
  padding: 80px 100px 50px 100px; 
  color: white; 
  text-align: justify; 
  text-justify: inter-word;
}
.user-img {
  width: 100px;
  height: 100px;
  border-color: #4298f7;
  border-width: thick;
  position: absolute;
  margin-top: -50px;
}
</style>
