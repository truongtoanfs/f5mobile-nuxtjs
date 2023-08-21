import { request } from "../utils/request";
import urls from '../config/urls';

function getProducts() {
  return request({
    method: 'get',
    url: urls.PRODUCTS,
  });
}

function getCategory(categoryPath: string) {
  return request({
    method: 'get',
    url: `${urls.PRODUCTS}/${categoryPath}`,
  });
}

export default {
  getProducts,
  getCategory,
}