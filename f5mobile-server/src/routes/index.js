const productsRoutes = require('./productsRoutes');

function route(app) {
  app.use('/products', productsRoutes);
}

module.exports = route;