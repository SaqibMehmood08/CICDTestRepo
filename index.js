const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("🚀 I am saqib Mehmood Malik From EC2 And jenkins");
});

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
