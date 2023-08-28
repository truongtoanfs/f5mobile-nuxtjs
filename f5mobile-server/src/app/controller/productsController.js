import query from '../../config/db/query';
const pool = require('../../config/db');
class ProductsController {
  async index(req, res, next) {
    try {
      const results = await pool.query(query.fullProductInfo);

      const categories = results.rows.reduce((value, item) => {
        const itemIndex = value.findIndex((valueItem) => valueItem.category === item.category);
        if (itemIndex >= 0) {
          value[itemIndex].products.push(item);
        } else {
          value.push({
            category: item.category,
            products: [item],
          });
        }
        return value;
      }, []);
      res.status(200).json(categories);
    } catch (error) {
      throw error;
    }
  }
  async category(req, res, next) {
    try {
      console.log(req.params);
      const results = await pool.query(query.categoryProductInfo, [req.params.category]);
      res.status(200).json(results.rows);
    } catch (error) {
      throw error;
    }
  }
}

module.exports = new ProductsController();

