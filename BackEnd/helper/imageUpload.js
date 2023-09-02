const cloudinary = require("cloudinary").v2;

cloudinary.config({
  cloud_name: process.env.Cloudinary_Username,
  api_key: process.env.Cloudinary_Api_Key,
  api_secret: process.env.Cloudinary_Api_Secret,
});

module.exports = cloudinary;
