<template>
  <div class="freq-question-box">
    <b-container>
      <b-row>
        <h1 class="super-bold">Frequently Asked Question</h1>
      </b-row>
      <b-row class="row justify-content-center">
        <div class="accordion" role="tablist">
          <b-card no-body class="mb-1 collapse-card">
            <b-card-header header-tag="header" class="p-1 collapse-card" role="tab">
              <b-container>
                <b-row style="width: 1500px">
                  <b-col>
                    <button block v-b-toggle.accordion-1 class="collapse-button"><h4>Dedicated customer support and help portal</h4></button>
                  </b-col>
                  <b-col>
                    <b-img src="@/assets/Path 9712.svg" fluid alt="Responsive image"></b-img>
                  </b-col>
                </b-row>
              </b-container>
            </b-card-header>
            <b-collapse id="accordion-1" accordion="my-accordion" role="tabpanel">
              <b-card-body>
                <p>With our dedicated customer support team, you can rest easy knowing that we’re doing everything we can to save you time, money, and stress.</p>
              </b-card-body>
            </b-collapse>
          </b-card>
        </div>
      </b-row>
      <b-row class="row justify-content-center">
        <div class="accordion" role="tablist">
          <b-card no-body class="mb-1 collapse-card">
            <b-card-header header-tag="header" class="p-1 collapse-card" role="tab">
              <b-container>
                <b-row style="width: 1500px">
                  <b-col>
                    <button block v-b-toggle.accordion-2 class="collapse-button"><h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed</h4></button>
                  </b-col>
                  <b-col>
                    <b-img src="@/assets/Path 9712.svg" fluid alt="Responsive image"></b-img>
                  </b-col>
                  <b-collapse id="accordion-2" accordion="my-accordion" role="tabpanel">
                    <b-card-body>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit arcu at ex malesuada, vitae malesuada nisl vulputate. Morbi accumsan ante felis, a scelerisque nulla cursus eget. Morbi non augue vel sem commodo sagittis. Donec ut purus ut neque facilisis consequat. Pellentesque dapibus urna lacus, et suscipit neque dictum eget.</p>
                    </b-card-body>
                  </b-collapse>
                </b-row>
              </b-container>
            </b-card-header>
          </b-card>
        </div>
      </b-row>
      <b-row class="row justify-content-center">
        <div class="accordion" role="tablist">
          <b-card no-body class="mb-1 collapse-card">
            <b-card-header header-tag="header" class="p-1 collapse-card" role="tab">
              <b-container>
                <b-row style="width: 1500px">
                  <b-col>
                    <button block v-b-toggle.accordion-3 class="collapse-button"><h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed</h4></button>
                  </b-col>
                  <b-col>
                    <b-img src="@/assets/Path 9712.svg" fluid alt="Responsive image"></b-img>
                  </b-col>
                  <b-collapse id="accordion-3" accordion="my-accordion" role="tabpanel">
                    <b-card-body>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit arcu at ex malesuada, vitae malesuada nisl vulputate. Morbi accumsan ante felis, a scelerisque nulla cursus eget. Morbi non augue vel sem commodo sagittis. Donec ut purus ut neque facilisis consequat. Pellentesque dapibus urna lacus, et suscipit neque dictum eget.</p>
                    </b-card-body>
                  </b-collapse>
                </b-row>
              </b-container>
            </b-card-header>
          </b-card>
        </div>
      </b-row>
      <b-row class="row justify-content-center">
        <div class="accordion" role="tablist">
          <b-card no-body class="mb-1 collapse-card">
            <b-card-header header-tag="header" class="p-1 collapse-card" role="tab">
              <b-container>
                <b-row style="width: 1500px">
                  <b-col>
                    <button block v-b-toggle.accordion-4 class="collapse-button"><h4>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed</h4></button>
                  </b-col>
                  <b-col>
                    <b-img src="@/assets/Path 9712.svg" fluid alt="Responsive image"></b-img>
                  </b-col>
                  <b-collapse id="accordion-4" accordion="my-accordion" role="tabpanel">
                    <b-card-body>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit arcu at ex malesuada, vitae malesuada nisl vulputate. Morbi accumsan ante felis, a scelerisque nulla cursus eget. Morbi non augue vel sem commodo sagittis. Donec ut purus ut neque facilisis consequat. Pellentesque dapibus urna lacus, et suscipit neque dictum eget.</p>
                    </b-card-body>
                  </b-collapse>
                </b-row>
              </b-container>
            </b-card-header>
          </b-card>
        </div>
      </b-row>
    </b-container>
  </div>
</template>

<script>

export default {
  name: "FreqAskedQuestions"
};
</script>

<style scoped>
.freq-question-box {
  background-color: #f2f5f9;
  width: 100%;
  height: 650px;
  margin-top: 100px;
  padding: 200px 100px 100px 350px;
}
.super-bold {
  font-weight: 900;
}
.collapse-card {
  background-color: none;
  background: none;
  border: none;
  text-align: left;
}
.collapse-button {
  background-color: none;
  background: none;
  border: none;
  color: #6160f6;
  font-weight: bold;
  font-size: 20px;
}
h1 {
  text-align: left;
}
h4 {
  font-weight: bold;
  text-align: left;
}
p {
  text-align: left;
}
</style>