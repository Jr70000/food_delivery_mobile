const express = require("express");
const app = express();
const dotenv = require("dotenv");
const mongoose = require("mongoose");
const productRoute = require('./routes/products')
const authRoute = require('./routes/auth')
const userRoute = require('./routes/users')
const port = process.env.PORT || 3000;


dotenv.config();

app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ limit: '10mb', extended: true }));



app.use('/api/auth', authRoute)
app.use('/api/products', productRoute)
app.use('/api/users', userRoute)

app.post('/api/products', async (req, res) => {
    try {
        const newProduct = new Product(req.body);
        const savedProduct = await newProduct.save();
        res.status(201).json(savedProduct);
    } catch (error) {
        console.error('Error adding product:', error);
        res.status(500).json({ error: 'Failed to add product' });
    }
});

app.get('/products', async (req, res) => {
    try {
        // Fetch products from your database or wherever they are stored
        const products = await Product.find(); // Assuming you're using Mongoose

        // Render a template or send a response with the products
        res.json(products);
    } catch (error) {
        console.error('Error fetching products:', error);
        res.status(500).json({ error: 'Failed to fetch products' });
    }
});
app.listen(process.env.PORT||port, ()=> console.log(`Example app listening on port ${process.env.PORT}!`))

const connectionString = process.env.MONGODB_URL;
const mongodburl = "mongodb+srv://josiahgimmy:josiah12345678@foodacity.w5cwwsj.mongodb.net/foodacity";

mongoose.Promise = global.Promise;
mongoose.connect(mongodburl,).then((data) => {
    console.log(`Connected to MongoDB Atlas at ${data.connection.host}`);
}).catch((err) => {
    console.error("Unable to connect:", err);
});
