export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: ['nuxt-icon', 'nuxt-swiper'],
  css: ['~/assets/css/main.css'],
  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },
})
