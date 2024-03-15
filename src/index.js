const express = require('express');
const PORT = process.env.PORT || 80
const NODE_ENV = process.env.NODE_ENV

const app = express();

app.get('/', (req, res) => {
    res.send('Hello World')
});
app.listen(PORT, () => {
    console.log(`Server up and running on port ${PORT} in ${NODE_ENV} mode`);
})