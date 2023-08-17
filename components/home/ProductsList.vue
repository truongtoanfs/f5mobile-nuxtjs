<template>
  <div class="pb-2">
    <div
      class="py-5 flex flex-col xl:flex-row xl:justify-between xl:items-center xl:py-1"
    >
      <div class="flex flex-col items-center xl:flex-row">
        <h2 class="text-xl font-bold uppercase">{{ layoutTitle }}</h2>
        <NuxtLink
          :to="productCategoriesObject?.link"
          class="text-lg py-0.5 px-3 bg-red-primary text-white hover:text-gray-100 rounded mt-2.5 xl:mt-0 xl:ml-4"
        >
          Xem thêm
        </NuxtLink>
      </div>
      <div
        class="hidden capitalize text-base font-medium mt-4 mb-2 md:flex md:items-center md:justify-center xl:text-white xl:font-normal xl:uppercase"
      >
        <NuxtLink
          v-for="linkObject in productCategoriesObject?.childs"
          :key="linkObject.title"
          :to="linkObject.link"
          class="px-4 xl:bg-gray-500 xl:bg-opacity-70 xl:hover:bg-opacity-100 xl:rounded-md xl:ml-1.5 xl:py-1 xl:px-2"
          >{{ linkObject.title }}</NuxtLink
        >
      </div>
    </div>
    <div class="grid grid-cols-2 gap-3 xl:grid-cols-5">
      <template v-for="(product, index) in products" :key="product.id">
        <div
          v-if="index < 10"
          class="bg-white px-2 py-3 rounded-lg text-red-primary"
        >
          <NuxtLink
            :to="product.category_link"
            class="flex items-center justify-center h-48 group overflow-hidden relative"
          >
            <img
              class="max-w-[90%] max-h-[90%] group-hover:max-w-full group-hover:max-h-full transition-all"
              :src="getImageUrl(product.avatar)"
              alt="iphone 12 Lock 64Gb"
            />
            <div
              v-if="product.new_price && product.old_price"
              class="text-white bg-green-primary w-20 text-center text-xs font-medium py-1 rounded absolute top-1 right-2 xl:w-auto xl:px-1 xl:text-[11px] xl:bottom-7 xl:right-1 xl:top-auto"
            >
              -{{
                calculateDiscountPercent(product.new_price, product.old_price)
              }}%
            </div>
          </NuxtLink>
          <NuxtLink
            :to="product.category_link"
            class="font-semibold block text-center leading-5 -mt-1"
            >{{ product.name }}</NuxtLink
          >
          <div
            class="font-medium text-lg leading-5 flex items-center justify-center flex-wrap mt-1 md:mt-3.5 md:mb-1 lg:mt-2"
          >
            {{
              product.new_price
                ? formatNumberToLocal(product.new_price)
                : "Liên hệ"
            }}
            <span
              class="text-base text-gray-500 line-through mx-0.5 md:mx-1.5"
              v-if="product.old_price"
            >
              {{ formatNumberToLocal(product.old_price) }}đ
            </span>
          </div>
        </div>
      </template>
    </div>
  </div>
</template>

<script lang="ts" setup>
import { menuNav, productsList } from "@/config/constants";
import {
  getImageUrl,
  formatNumberToLocal,
  calculateDiscountPercent,
} from "@/utils";

const props = defineProps({
  layoutTitle: { type: String, required: true },
  products: {
    type: Object,
    default() {
      return {};
    },
  },
});

const productCategoriesObject = menuNav.find(
  (item) => item.title.toLowerCase() === props.layoutTitle.toLowerCase()
);
</script>

<style scoped>
.text-xsm {
  font-size: 11px;
}
</style>