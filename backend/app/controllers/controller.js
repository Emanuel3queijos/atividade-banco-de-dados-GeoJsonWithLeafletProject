const express = require("express");
const router = express.Router();
const bodyParser = require("body-parser");
const zlib = require("zlib");
const pool = require("../config/db.config");

router.post("/save", async (req, res) => {
  const { name, geojson } = req.body;
  const query =
    "INSERT INTO dados_geograficos (name, geojson) VALUES ($1, $2) RETURNING *";
  const values = [name, geojson];
  try {
    const result = await pool.query(query, values);
    res.json(result.rows[0]);
  } catch (err) {
    console.error("Erro ao inserir dados:", err);
    res.status(500).json({ error: "Erro interno do servidor" });
  }
});

// Read (Ler)
router.get("/dados", async (res) => {
  try {
    const result = await pool.query("SELECT * FROM public.dados_geograficos");
    res.json(result.rows);
  } catch (err) {
    console.error("Erro ao ler dados:", err);
    res.status(500).json({ error: "Erro interno do servidor" });
  }
});

// Update (Atualizar)
router.put("/dados/:id", async (req, res) => {
  const { id } = req.params;
  const { name } = req.body;
  const query =
    "UPDATE dados_geograficos SET name = $1 WHERE id = $2 RETURNING *";
  const values = [name, id];
  try {
    const result = await pool.query(query, values);
    if (result.rowCount === 0) {
      return res.status(404).json({ error: "Registro não encontrado" });
    }
    res.json(result.rows[0]);
  } catch (err) {
    console.error("Erro ao atualizar dados:", err);
    res.status(500).json({ error: "Erro interno do servidor" });
  }
});

// Delete (Excluir)
router.delete("/dados/:id", async (req, res) => {
  const { id } = req.params;
  const query = "DELETE FROM dados_geograficos WHERE id = $1 RETURNING *";
  try {
    const result = await pool.query(query, [id]);
    if (result.rowCount === 0) {
      return res.status(404).json({ error: "Registro não encontrado" });
    }
    res.json({ message: "Registro excluído com sucesso" });
  } catch (err) {
    console.error("Erro ao excluir dados:", err);
    res.status(500).json({ error: "Erro interno do servidor" });
  }
});

module.exports = router;
