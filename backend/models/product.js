const mongoose = require('mongoose');
const { boolean } = require('webidl-conversions');


const ProductSchema = new mongoose.Schema({
    name: {type: String, required: true},
    title: { type: String, required: true },
    category: { type: String, required: true },
    imageUrl: { type: String, required: true },
    Price: { type: String, required: true },
    sizes: { type: [
      {
        size: {
            type: String, required: true
        },
        isSelected: {
            type: Boolean, required: false, default: false
        }
      }
      
    ]
},
Price: {type: String, required:true},
description: { type: String, required: true },

},{timestamps: true});

module.exports= mongoose.model("product",ProductSchema)
