<script setup lang="ts">
// This will work in both `<script setup>` and `<script>`
definePageMeta({
  layout: "category-detail",
});
</script>
<template>
  <p>{{ $route.params.name }}</p>
</template>