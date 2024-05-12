const { Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "GeojsonsDB",
  password: "0710",
  port: 5432,
});

module.exports = pool;

pool.connect((err, client, release) => {
  if (err) {
    console.error("Erro ao conectar:", err.stack);
  } else {
    console.log("Conexão bem-sucedida");
  }
  release();
});
