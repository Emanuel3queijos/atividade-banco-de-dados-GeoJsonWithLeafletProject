const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;
const dadosRouter = require("./controllers/controller");

app.use(express.json());
app.use("/api", dadosRouter);

app.get("/", (req, res) => {
  res.send("Bem-vindo à API GeoJSON!");
});

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
