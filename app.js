const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello from Sample App via ArgoCD + helm! test14');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
