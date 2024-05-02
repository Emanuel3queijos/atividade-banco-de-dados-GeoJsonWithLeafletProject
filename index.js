const express = require("express");
const app = express();
app.use(express.json());

const port = 5000;

require("dotenv").config();

const { Client } = require("pg");

//database info using dotenv
const client = new Client({
  user: process.env.PGUSER,
  host: process.env.PGHOST,
  database: process.env.PGDATABASE,
  password: process.env.PGPASSWORD,
  port: process.env.PGPORT,
});

client.connect();

app.listen(port, () => {
  console.log(`running on ${port}.`);
});

app.get("/", (req, res1) => {
  res1.header("Access-Control-Allow-Origin", "*");
  res1.header("Access-Control-Allow-Methods", "GET,PUT,POST,DELETE,OPTIONS");
  res1.header(
    "Access-Control-Allow-Headers",
    "Content-Type, Authorization, Content-Length, X-Requested-With"
  );

  //const qu = `SELECT ST_AsGeoJSON(geom) from va`;

  const qu = `SELECT row_to_json(fc)
  FROM ( SELECT 'FeatureCollection' As type, array_to_json(array_agg(f)) As features
  FROM (SELECT 'madereira' As type, 
     ST_AsGeoJSON(lg.geom)::json As geometry, 
     (
     select row_to_json(t) 
     from (select gid, name, fips) t
     )
     As properties
    FROM va As lg   ) As f )  As fc;`;

  //gid, name, fips are all columns in table va
  //va = current table

  client.query(qu, (err, res) => {
    if (err) {
      console.log(err);
    }
    res1.json(res.rows[0].row_to_json);

    //client.end();
  });
});

app.get("/geobuftest", (req, res1) => {
  res1.header("Access-Control-Allow-Origin", "*");
  res1.header("Access-Control-Allow-Methods", "GET,PUT,POST,DELETE,OPTIONS");
  res1.header(
    "Access-Control-Allow-Headers",
    "Content-Type, Authorization, Content-Length, X-Requested-With"
  );

  const qu = `select ST_AsGeobuf(sample,'geom') FROM (SELECT gid,geom from va) as sample`;

  client.query(qu, (err, res) => {
    if (err) {
      console.log(err);
    }

    res1.send(res.rows[0].st_asgeobuf);
  });
});

//console.log(process.env.APP_ENV)
