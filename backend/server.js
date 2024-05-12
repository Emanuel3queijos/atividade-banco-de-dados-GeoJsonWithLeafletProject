const express = require("express");
const path = require("path");
const app = express();

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
const dadosRouter = require("./app/controllers/controller");

app.use(express.json());
app.use("/api", dadosRouter);
app.use(express.static(path.join(__dirname, "../frontend")));

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "../frontend/index.html"));
});
