const Product = require('../models/product');

module.exports = {
    createProduct: async (req, res) => {
        const newProduct = new Product(req.body)
        try {
            await newProduct.save();
            res.status(200).json("product created")
        } catch (error) {
            res.status(500).json("failed to create product")
        }
    },
    getAllProducts: async (req, res) => {
        try {
            const products = await product.find().sort({ createdAt: -1 })
            res.status(200).json(products)
        } catch (error) {
            res.status(200).json("failed to get the products")
        }
    }, getProduct: async (req, res) => {
        const productId = req.params.id
        try {
            const products = await product.findById(productId)
            const { _v, createdAt, ...productData } = product.doc;
            res.status(200).json(productData)
        } catch (error) {
            res.status(500).json("failed to get the products")
        }
    },
    searchProducts: async (req, res) => {
        try {
            const results = await product.aggregate(
                [
                    {
                        $search: {
                            index: "food",
                            text: {
                                query: req.params.key,
                                path: {
                                    wildcard: "*",
                                },
                            },
                        },
                    },
                ]
            )
            res.status(200).json(results)
        } catch (error) {
            res.status(500).json("failed to get the products")
        }
    }
}