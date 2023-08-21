
<script setup lang="ts">
import productServices from "@/services/product";
import type { Product } from '@/types';
// This will work in both `<script setup>` and `<script>`
definePageMeta({
  layout: "category-detail",
});

const sortConditions = ['Dòng sản phẩm', 'Mới nhất', 'Giá tăng dần', 'Giá giảm dần', '% Giảm'];
const productSortType = ref('Dòng sản phẩm');
const isOpenSideFilter = ref(false);
const productsList = ref<Product[]>([]);
let originData: Product[] = [];

const route = useRoute();

async function getProductList() {
  const { data } = await useAsyncData("category", async () => {
    try {
      const { data: response } = await productServices.getCategory(route.path);
      return response;
    } catch (error) {
      console.log("error", error);
    }
  });
  originData = data as unknown as Product[];
  productsList.value = data as unknown as Product[];
  console.log('data', productsList.value);
};

getProductList();



function sortProducts(sortType: string) {
  productSortType.value = sortType;
  switch (sortType) {
    case 'Giá tăng dần':
      productsList.value.sort(function (a, b) {
        return a.new_price - b.new_price;
      })
      break;
    case 'Giá giảm dần':
      productsList.value.sort(function (a, b) {
        return b.new_price - a.new_price;
      })
      break;
    case '% Giảm':
      productsList.value.sort(function (a, b) {
        return calculateDiscountPercent(b.new_price, b.old_price) - calculateDiscountPercent(a.new_price, a.old_price);
      })
      break;
    case 'Mới nhất':
      productsList.value.sort(function (a, b) {
        return b.status_value - a.status_value;
      })
      break;
    default://ordered in database
      productsList.value = originData;
  }
}
</script>

<template>
  <div class="container mx-auto">
    <category-head />
    <!-- <category-filter-mobile :sortConditions="sortConditions" :productSortType="productSortType"
      @sortProducts="sortProducts" @toggleSideFilter="isOpenSideFilter = !isOpenSideFilter" /> -->
    <!-- <div class="flex mt-2">
      <side-filter @filterValues="filterProducts" :isOpenSideFilter="isOpenSideFilter"
        @closeSideFilter="isOpenSideFilter = false"
        :filterConditions="productObject?.categoryFilter || productObject?.seriesFilter" />
      <div class="flex-1">
        <div class="hidden items-center justify-end bg-white py-1.5 px-4 rounded-lg xl:flex">
          <sort-on-laptop @sortProducts="sortProducts" :sortConditions="sortConditions"
            :productSortType="productSortType" />
        </div>
        <category-layout-product :productsList="productsList" />
      </div>
    </div> -->
  </div>
</template>
