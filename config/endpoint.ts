export function getEndpoint() {
  const BACKEND_URL = 'http://localhost:5000';
  return {
    BACKEND_URL,
    PRODUCTS: `${BACKEND_URL}/products`,
  }
};