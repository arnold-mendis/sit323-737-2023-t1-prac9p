'use strict';

const express = require('express');

//constants
const PORT = 8095;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello Im Arrnold and this my Node Docker App!!!');
});

app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
});