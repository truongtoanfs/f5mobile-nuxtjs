

<script lang="ts" setup>
import { menuNav } from "@/config/constants";

const route = useRoute();

interface navItem {
  title?: string,
  link?: string,
};

interface menuNav extends navItem {
  childs?: navItem[],

}

function selectedCategory(): menuNav {
  const value = menuNav.reduce((result, item) => {
    const isSeries = route.path.includes('series');
    if (item.link === route.path) {
      result = item;
    } else if (isSeries) {
      const itemSearch = item.childs.find((child) => child.link === route.path);
      if (itemSearch) {
        result = itemSearch;
      }
    }
    return result;
  }, {});
  return value;
}


const categoryNav = selectedCategory();

const isSearch = route.path.includes('/search');
console.log('route', isSearch);


</script>

<template>
  <div class="flex items-center pt-8 xl:hidden">
    <div class="bg-green-primary text-white py-2.5 px-3 rounded-l-md">Hỗ trợ</div>
    <div class="bg-white text-xl font-medium pl-6 py-2 rounded-r-md flex-1"><i
        class="fas fa-phone-alt text-base mr-1"></i> 039.6762.825</div>
  </div>
  <h1 v-if="!isSearch"
    class="text-3xl uppercase font-bold text-center pt-5 xl:text-5xl xl:text-right xl:pt-20 xl:pb-16 xl-text-shadow xl:text-white">
    {{ categoryNav?.title }}</h1>
  <category-head-contact :class="isSearch && 'pt-7'" />
  <div v-if="categoryNav.childs"
    class="grid grid-cols-3 mt-4 bg-white pt-2 pb-5 rounded-lg xl:mt-7 xl:bg-gray-200 xl:gap-5">
    <template v-for="item in categoryNav.childs" :key="item.title">
      <NuxtLink :to="item.link"
        class="relative overflow-hidden group xl:flex xl:items-center xl:bg-white xl:rounded-xl xl:p-2">
        <img class="max-w-[98px] xl-max-w-[156px] mx-auto xl:mx-0"
          src="../../assets/images/products/iphone-11-pro-max-trang.jpg" :alt="item.title">
        <p class="text-sm font-medium text-center xl:text-2xl">{{ item.title }}</p>
        <div
          class="hidden absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 -rotate-45 w-full h-0 group-hover:h-sm transition-all duration-300 bg-black bg-opacity-20 xl:block">
        </div>
      </NuxtLink>
    </template>
  </div>
</template>

<style scoped>
@media screen and (min-width: 1280px) {
  .xl-text-shadow {
    text-shadow: 0 3px 10px rgb(0 0 0 / 50%);
  }
}
</style>