const express = require("express");
const router = express.Router();
const pool = require("../config/db.config");

router.post("/salvarGeojsonDb", async (req, res) => {
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

//esse cara vai retornar todos os geojsons, acho q n vou usar ele mt, n sei

router.get("/pegarTodosGeojsonDB", async (res) => {
  try {
    const result = await pool.query("SELECT * FROM public.dados_geograficos");
    res.json(result.rows);
  } catch (err) {
    console.error("Erro ao ler dados:", err);
    res.status(500).json({ error: "Erro interno do servidor" });
  }
});

// esse cara nunca vai ser usado kkkkkkkkkkkkkkkkkkkkkkkkkk
router.put("putGeojson/:id", async (req, res) => {
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

router.get("/pegarGeoJsonByName/:name", async (req, res) => {
  const { name } = req.params;
  const query = "SELECT * FROM public.dados_geograficos WHERE name = $1"; 
  const values = [name];
  try {
    const result = await pool.query(query, values);
    if (result.rowCount === 0) {
      return res.status(404).json({ error: "Registro não encontrado" });
    }
    res.json(result.rows[0]);
  } catch (err) {
    console.error("Erro ao pegar dados:", err);
    res.status(500).json({ error: "Erro interno do servidor" });
  }
});


// acho q esse aqui ta ok
router.delete("/deleteGeojson/:id", async (req, res) => {
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
