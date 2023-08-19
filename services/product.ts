import { request } from "../utils/request";
import urls from '../config/urls';

function getProducts() {
  return request({
    method: 'get',
    url: urls.PRODUCTS,
  });
}

export default {
  getProducts,
}