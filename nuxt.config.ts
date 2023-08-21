export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: ['nuxt-icon', 'nuxt-swiper', '@pinia/nuxt'],
  css: ['~/assets/css/main.css'],
  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },
  pinia: {
    autoImports: [
      'defineStore', // import { defineStore } from 'pinia'
    ],
  },
  typescript: {
    strict: true
  }
})
