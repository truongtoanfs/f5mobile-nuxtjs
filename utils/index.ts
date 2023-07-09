const images = import.meta.glob('@/assets/images/**/*.{jpg, png}', {
  import: 'default',
  eager: true,
})
const imagePaths = Object.keys(images);
export function getImageUrl(name: string) {
  const imageUrl = imagePaths.find((item) => item.includes(name));
  return imageUrl ? images[imageUrl] : '';
}

export function formatNumberToLocal(number: number) {
  return new Intl.NumberFormat('en-US').format(number);
}

export function calculateDiscountPercent(currentPrice: number, oldPrice: number) {
  const disCountPercent = (oldPrice - currentPrice) * 100 / oldPrice;
  return Math.round(disCountPercent);
}