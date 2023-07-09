<script lang="ts" setup>
import { getImageUrl } from "@/utils";

const modules = [SwiperNavigation, SwiperAutoplay];
</script>
<template>
  <div class="mb-1 xl:flex banner">
    <div class="w-banner-left pr-2 relative group">
      <Swiper :modules="modules" navigation loop :autoplay="{
        delay: 10000,
        disableOnInteraction: false,
      }">
        <SwiperSlide v-for="slide in 4" :key="slide">
          <img class="banner-img" :src="getImageUrl(`bannerLeft_${slide}`)" alt="banner f5mobile">
        </SwiperSlide>
      </Swiper>
    </div>
    <div class="w-banner-right pl-2 hidden xl:block">
      <Swiper :modules="modules" loop :autoplay='{ delay: 2600, disableOnInteraction: false }'>
        <SwiperSlide v-for="slide in 3" :key="slide">
          <img class="banner-img" :src="getImageUrl(`bannerRight_${slide}`)" alt="banner f5mobile">
        </SwiperSlide>
      </Swiper>
    </div>
  </div>
</template>

<style scoped>
.banner-img {
  width: 100%;
  height: 400px;
  object-fit: cover;
}

.w-banner-left {
  width: 100%;
}

.w-banner-right {
  width: 345px;
}

@media screen(xl) {
  .w-banner-left {
    width: calc(100% - 345px);
  }
}
</style>

<style>
/* style to custom arror swiper */
.banner .swiper-button-next:after,
.banner .swiper-button-prev:after {
  --swiper-navigation-size: 30px;
}

.banner .swiper-button-prev,
.banner .swiper-button-next {
  @apply px-4 py-0.5 rounded bg-gray-300 bg-opacity-10 group-hover:bg-opacity-100 text-gray-600 hover:bg-opacity-50 hover:text-white;
}
</style>