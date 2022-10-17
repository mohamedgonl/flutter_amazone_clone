
const mongoose = require('mongoose')

const mongooseConnect = async () => {
    try {
        await mongoose.connect(process.env.MONGO_URL,{
            useNewUrlParser: true,
            useUnifiedTopology: true,
         })
        console.log('Mongodb connected!');
    } catch (err) {
        console.log('Connect mongodb get error');
    }
}

module.exports = mongooseConnect

