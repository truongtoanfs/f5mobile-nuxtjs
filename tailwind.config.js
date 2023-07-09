/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./components/**/*.{js,vue,ts}",
    "./layouts/**/*.vue",
    "./pages/**/*.vue",
    "./plugins/**/*.{js,ts}",
    "./nuxt.config.{js,ts}",
    "./app.vue",
  ],
  theme: {
    extend: {
      colors: {
        green: {
          primary: 'rgb(var(--color-green-primary) / <alpha-value>)',
        },
        red: {
          primary: 'rgb(var(--color-red-primary) / <alpha-value>)',
        },
      },
      boxShadow: {
        'search-box': '0 2px 4px 0 rgba(55, 181, 72, 0.4)', //var(--color-green-primary)
      },
      maxWidth: {
        '1300': '1300px',
      },
      letterSpacing: {
        '2xs': '0.5px',
      },
    },
  },
  plugins: [],
}

