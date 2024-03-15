const express = require('express');
const PORT = process.env.PORT || 3000;
// create express app and listen on port 4000 

const app = express();


app.get('/', (req, res) => {
    res.send('Hello World')
});
app.listen(PORT, () => {
    console.log(`Server up and running http://localhost:${PORT}`);
})