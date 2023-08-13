import { request } from "../utils/request";
import { getEndpoint } from '../config/endpoint';

function getProducts() {
  const endpoint = getEndpoint();
  return request({
    method: 'get',
    url: endpoint.PRODUCTS,
  });
}

export default {
  getProducts,
}