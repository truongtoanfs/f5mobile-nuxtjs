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
</script>
<template>
  <div class="container mx-auto">
    <HomeBanner />
    <HomeProductsList layoutTitle="12 series" />
    <HomeSearchTags />
  </div>
</template>