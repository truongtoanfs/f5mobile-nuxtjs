const pool = require('../../config/db');
const fullProductInfo = `
    SELECT product.id, name, new_price, old_price, total, sold, description, img_url, category, category.link AS category_link, series, series.link AS series_link, series_img, color, color.value AS color_value, storage, storage.value AS storage_value, status, status.value AS status_value
    FROM product LEFT JOIN category ON product.category_id = category.id
    LEFT JOIN series ON product.series_id = series.id
    LEFT JOIN color ON product.color_id = color.id
    LEFT JOIN storage ON product.storage_id = storage.id
    LEFT JOIN status ON product.status_id = status.id;
`;
const categoryProductInfo = `
    SELECT product.id, name, new_price, old_price, total, sold, description, img_url, category, category.link AS category_link, series, series.link AS series_link, series_img, color, color.value AS color_value, storage, storage.value AS storage_value, status, status.value AS status_value
    FROM product LEFT JOIN category ON product.category_id = category.id AND category.link = $1
    LEFT JOIN series ON product.series_id = series.id
    LEFT JOIN color ON product.color_id = color.id
    LEFT JOIN storage ON product.storage_id = storage.id
    LEFT JOIN status ON product.status_id = status.id;
`;
class ProductsController {
  async index(req, res, next) {
    try {
      const results = await pool.query(fullProductInfo);

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
      const results = await pool.query(categoryProductInfo, [req.params.category]);
      res.status(200).json(results.rows);
    } catch (error) {
      throw error;
    }
  }
}

module.exports = new ProductsController();

