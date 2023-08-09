const express = require('express');
const router = express.Router();
const ProductsController = require('../app/controller/productsController');

router.get('/', ProductsController.index);

module.exports = router;