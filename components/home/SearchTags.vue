<script setup lang="ts">
  const tags = ['iPhone', 'Apple Watch', 'iPad', 'Airpods', '11 Pro Max', 'iPhone 11', 'iPhone XS Max'];
</script>
<template>
  <div class="hidden items-center pt-3 pb-11 border-b border-gray-300 xl:flex">
    <span class="mr-2">Tags:</span>
    <ul class="flex items-center">
      <li v-for="(tag, index) in tags" :key="index" class="py-2 px-2 rounded-md shadow-md bg-white mr-1.5">
        <a href="#" class="hover:text-blue-700">{{ tag }}</a>
      </li>
    </ul>
  </div>
</template>