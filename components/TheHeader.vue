<script lang="ts" setup>
import { menuNav } from "@/config/constants";
const selectedSubNav = ref(-1);
function selectSubNav(index: number) {
  if (selectedSubNav.value === index) {
    selectedSubNav.value = -1;
  } else {
    selectedSubNav.value = index;
  }
}

const isShowMenu = ref(false);
function toggleMenu() {
  isShowMenu.value = !isShowMenu.value;
}

const isOpenSearchBox = ref(false);
function toggleSearchBox(value: boolean) {
  isOpenSearchBox.value = value;
}

</script>
<template>
  <header>
    <div class="container mx-auto">
      <div class="flex justify-between items-center text-green-primary py-2">
        <span class="p-1 xl:hidden" @click="toggleMenu">
          <Icon name="ic:baseline-menu" size="28" />
        </span>
        <NuxtLink to="/" class="flex items-center">
          <img src="@/assets/images/f5_logo.jpg" class="h-12" alt="f5 mobile logo" />
          <h4 class="text-gray-600 font-medium text-xl ml-4 hidden xl:block">
            Khách hàng là người thân
          </h4>
        </NuxtLink>
        <div
          class="hidden w-[420px] h-9 -ml-40 border border-green-primary rounded-2xl px-3.5 text-green-primary shadow-md focus-within:shadow-search-box xl:flex xl:items-center">
          <span class="mr-2.5">
            <Icon name="charm:search" size="20" />
          </span>
          <input type="text" class="w-full h-full focus:outline-none placeholder-green-primary"
            placeholder="Tìm kiếm..." />
        </div>
        <div>
          <span class="py-1 cursor-pointer xl:hidden" @click="toggleSearchBox(true)">
            <Icon name="ic:baseline-search" size="28" />
          </span>
          <NuxtLink to="/cart" class="p-1 relative">
            <Icon name="ion:cart" class="text-3xl xl:text-[40px]" />
            <span class="bg-red-500 text-white px-1 h-5 rounded-full text-sm absolute -top-1 right-0">0</span>
          </NuxtLink>
        </div>
      </div>
    </div>
    <div :class="[isShowMenu ? 'block' : 'hidden', 'xl:block']">
      <div
        class="fixed inset-y-0 left-0 overflow-y-auto z-50 w-72 bg-white xl:static xl:overflow-y-visible xl:w-full xl:bg-red-primary">
        <div class="bg-red-primary flex justify-between items-center px-1 h-11 xl:hidden">
          <NuxtLink to="/">
            <img src="@/assets/images/logo-mobile.png" class="h-7" alt="f5 mobile logo" />
          </NuxtLink>
          <span class="text-white p-2 cursor-pointer hover:opacity-90" @click="toggleMenu">
            <Icon name="iconamoon:close-bold" class="text-2xl" />
          </span>
        </div>
        <nav class="mx-1 xl:container xl:flex xl:text-white xl:relative">
          <div v-for="item, index in menuNav" :key="item.title" class="border-b border-grey-300 group xl:border-none">
            <div class="flex justify-between items-center">
              <NuxtLink :to="item.link" @click="toggleMenu"
                class="uppercase font-medium pt-2.5 pb-2 pl-2 flex-1 xl:font-normal xl:px-5 xl:tracking-2xs xl:group-hover:bg-white xl:group-hover:text-black">
                {{ item.title }}
              </NuxtLink>
              <button v-if="item?.childs?.length > 0" class="py-1 px-3 shadow bg-gray-50 hover:bg-gray-100 xl:hidden"
                @click="selectSubNav(index)">
                <Icon name="ps:down" />
              </button>
            </div>
            <ul v-if="item?.childs?.length > 0"
              :class="[index === selectedSubNav ? 'block' : 'hidden', 'pl-6 pb-1 xl:absolute xl:z-50 xl:inset-x-0 xl:top-full xl:group-hover:flex xl:rounded-b-lg xl:py-3 xl:bg-red-primary']">
              <li v-for="itemChild in item?.childs" :key="itemChild.title" class="xl:pr-40">
                <NuxtLink :to="itemChild.link" @click="toggleMenu"
                  class="py-1 inline-block xl:text-lg xl:uppercase xl:font-medium xl:hover:text-black">
                  {{ itemChild.title }}
                </NuxtLink>
              </li>
            </ul>
          </div>
        </nav>
      </div>
      <div class="overlay xl:hidden" @click="toggleMenu"></div>
    </div>
    <div v-if="isOpenSearchBox" class="fixed inset-0 overlay">
      <div @clickout="toggleSearchBox(false)" class="bg-gray-100 text-gray-600 flex items-center text-lg py-1">
        <button @click="toggleSearchBox(false)" class="px-2 py-1">
          <Icon name="majesticons:arrow-left" class="text-2xl" />
        </button>
        <div class="flex-1 flex items-center">
          <input v-focus type="text"
            class="w-full px-1 focus:outline-none border-b-2 border-gray-500 bg-transparent placeholder-current"
            placeholder="Tìm kiếm sản phẩm" />
          <button class="px-2 py-1" @click="toggleSearchBox(false)">
            <Icon name="iconamoon:close-bold" class="text-2xl" />
          </button>
        </div>
        <button class="px-2 py-1">
          <Icon name="ic:baseline-search" class="text-2xl" />
        </button>
      </div>
    </div>
  </header>
</template>