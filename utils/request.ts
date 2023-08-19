import axios from "axios";

// create an axios instance
const request = axios.create({
  withCredentials: true, // send cookies when cross-domain requests
  timeout: 180000, // request timeout
});

export { request };