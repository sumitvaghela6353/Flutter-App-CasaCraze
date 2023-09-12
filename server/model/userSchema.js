const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
    username: {
        type: String,
        require: true
    },
    email: {
        type: String,
        require: true,
        unique: true
    },
    password: {
        type: String,
        required: true,
    },
    mobile: {
        type: String,
        required: true,
        unique: true
    }
});

const User = mongoose.model('USER', userSchema);

module.exports = User;