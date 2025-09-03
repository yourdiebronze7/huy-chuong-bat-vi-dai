const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = process.env.PORT || 3000;

app.use(bodyParser.json());

app.get('/', (req, res) => {
    res.send('Chào mừng đến với nền tảng Huy Chương Vĩ Đại!');
});

app.listen(port, () => {
    console.log(`Máy chủ đang chạy trên http://localhost:${port}`);
});