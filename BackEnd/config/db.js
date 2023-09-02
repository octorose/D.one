const mongoose = require('mongoose');

const connectDB = mongoose.createConnection(process.env.MONGO_URI).on('open', () => {
    console.log('MongoDB is connected');
}).on('error', (err) => {
    console.log('MongoDB connection error: ', err);
});

module.exports = connectDB;