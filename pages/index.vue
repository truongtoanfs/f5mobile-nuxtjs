<template>
  <div class="container mx-auto">
    <HomeBanner />
    <HomeProductsList layoutTitle="12 series" />
    <HomeSearchTags />
  </div>
</template>

<script setup lang="ts">
useHead({
  script: [
    {
      src: 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v12.0&appId=3345308702251759&autoLogAppEvents=1',
      crossorigin: 'anonymous',
      defer: true,
      async: true,
      nonce: 'jgRY0Q8T',
    }
  ]
})

import productServices from '../services/product';

const { data } = await useAsyncData('products', async () => {
  try {
    const { data: response } = await productServices.getProducts();
    return response;
  } catch (error) {
    console.log('error', error);
  }
});
</script>