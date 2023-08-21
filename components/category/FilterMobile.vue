<script lang="ts" setup>
const props = defineProps({
  sortConditions: Array,
  productSortType: String,
});
const emits = defineEmits(['toggleSideFilter', 'sortProducts']);

const isOpenSortDropdown = ref(false);
const sorted = ref(props.productSortType);
</script>

<template>
  <div @clickout="isOpenSortDropdown = false" class="relative grid grid-cols-2 gap-x-2.5 mt-4 xl:hidden">
    <button @click="isOpenSortDropdown = !isOpenSortDropdown" class="py-1.5 px-4 rounded-md font-medium bg-white">Sắp
      xếp <i class="fas fa-sort ml-1"></i></button>
    <button @click="$emit('toggleSideFilter'), isOpenSortDropdown = false"
      class="py-1.5 px-4 rounded-md font-medium bg-white">Lọc sản phẩm <i class="fas fa-filter ml-1 text-sm"></i></button>
    <div v-if="isOpenSortDropdown"
      class="absolute top-full -inset-x-1 z-10 px-4 pt-2.5 pb-4 bg-white border border-gray-200 shadow-lg rounded-md">
      <label @click="$emit('sortProducts', sortCondition)" v-for="(sortCondition, index) in sortConditions" :key="index"
        class="flex items-center py-1">
        <input class="select-box-size mr-2.5" type="radio" :value="sortCondition" v-model="sorted"> {{ sortCondition }}
      </label>
    </div>
  </div>
</template>
