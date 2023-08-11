const pool = require('../../config/db');

class ProductsController {
    index(req, res, next) {
        pool.query('SELECT * FROM person', (error, results) => {
            if (error) throw error;
            res.status(200).json(results.rows);
        });
    }
}

module.exports = new ProductsController();

