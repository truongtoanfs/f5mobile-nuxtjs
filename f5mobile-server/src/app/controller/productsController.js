const pool = require('../../config/db');
const fullProductInfo = `
    SELECT product.id, name, new_price, old_price, total, sold, description, category, category.link AS category_link, series, series.link AS series_link, color, color.value AS color_value, storage, storage.value AS storage_value, status, status.value AS status_value
    FROM product LEFT JOIN category ON product.category_id = category.id
    LEFT JOIN series ON product.series_id = series.id
    LEFT JOIN color ON product.color_id = color.id
    LEFT JOIN storage ON product.storage_id = storage.id
    LEFT JOIN status ON product.status_id = status.id;
`;
class ProductsController {
    async index(req, res, next) {
        try {
            const results = await pool.query(fullProductInfo);
            res.status(200).json(results.rows);
        } catch (error) {
            throw error;
        }
    }
}

module.exports = new ProductsController();

