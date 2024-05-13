const express = require("express");
const path = require("path");
const app = express();

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port http://localhost:${PORT}.`);
});
// se o krl desse json passar de 50 mb eu do minha bunda ioerhjg[wojgw4toihj6oiydfrlp[pl[5tlpo[h6ytulpyoyto]]]]
const dadosRouter = require("./app/controllers/controller");

app.use(express.urlencoded({ extended: true, limit: "50mb" }));

app.use(express.json({ limit: "50mb" }));

app.use("/api", dadosRouter);
app.use(express.static(path.join(__dirname, "../frontend")));

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "../frontend/index.html"));
});
