<script lang="ts" setup>
const props = defineProps({
  isOpenSideFilter: Boolean,
  filterConditions: Object,
});
const emits = defineEmits(['closeSideFilter', 'filterValues']);

const filterValues = ref([]);
function findTitle(key: string) {
  if (key === 'appearance') {
    return 'Hình Thức';
  } else if (key === 'memory') {
    return 'Bộ Nhớ';
  } else if (key === 'color') {
    return 'Màu Sắc';
  } else {
    return 'Tìm Theo Giá';
  }
}

watch(filterValues, () => {
  emits('filterValues', filterValues.value);
});

</script>

<template>
  <div class="xl:mr-3">
    <div v-if="isOpenSideFilter" @click="$emit('closeSideFilter')" class="overlay"></div>
    <div :class="isOpenSideFilter ? 'block' : 'hidden'"
      class="fixed top-0 right-0 z-50 w-80 h-screen bg-white border-l border-gray-200 shadow-md xl:block xl:static xl:h-auto xl:rounded-xl xl:overflow-hidden xl:border-0 xl:w-64">
      <div class="flex items-center justify-between bg-red-primary px-1 xl:hidden">
        <router-link to="/">
          <img class="h-7" src="/src/assets/images/f5_logo_03.png" alt="logo f5">
        </router-link>
        <span @click="$emit('closeSideFilter')" class="text-white p-2 text-xl"><i class="fas fa-times"></i></span>
      </div>
      <h2 class="hidden uppercase font-medium bg-black text-white py-2 px-3 xl:block">lọc sản phẩm</h2>
      <div v-if="filterConditions" class="filter-content-height overflow-y-auto xl:pt-2 xl:pb-4">
        <div class="xl:px-2.5" v-for="(condition, conditionKey, index) in filterConditions" :key="index">
          <div class="flex items-center justify-between px-2.5 pt-1.5 pb-1 bg-gray-200 xl:bg-white">
            <span class="xl:text-lg font-medium">{{ findTitle(conditionKey) }}</span>
            <span class="xl:hidden"><i class="fas fa-plus pr-1"></i></span>
          </div>
          <ul class="mx-2 py-0.5 text-sm xl:ml-2.5">
            <li v-for="(value, index) in condition" :key="index">
              <label class="flex items-center px-1.5 py-1.5">
                <input class="select-box-size mr-2" type="checkbox" :value="value" v-model="filterValues"> {{ value ===
                  'Likenew 99,99%' ? 'Likenew 99%' : value }}
              </label>
            </li>
          </ul>
        </div>
      </div>
      <div class="absolute bottom-0 py-3 inset-x-0 flex items-center justify-center border-t border-gray-200 xl:hidden">
        <button class="bg-yellow-500 text-white py-1.5 px-4 rounded mx-1">Thu gọn</button>
        <button class="bg-green-primary text-white py-1.5 px-4 rounded mx-1">Đặt lại</button>
        <button class="bg-red-primary text-white py-1.5 px-4 rounded mx-1">Áp dụng</button>
      </div>
    </div>
  </div>
</template>
