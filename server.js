// server.js
const express = require("express");
const mysql = require("mysql");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.static("public"));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// DB connection
const db = mysql.createConnection({
  host: "localhost",
  user: "root",         //  MySQL username
  password: "",         //  MySQL password
  database: "" //  database name
});

db.connect((err) => {
  if (err) throw err;
  console.log("MySQL connected");
});

// REGISTER
app.post("/register", (req, res) => {
  const { name, email, password } = req.body;
  const sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
  db.query(sql, [name, email, password], (err, result) => {
    if (err) return res.status(500).send("Error saving user");
    res.send("User registered!");
  });
});

// LOGIN
app.post("/login", (req, res) => {
  const { email, password } = req.body;
  const sql = "SELECT * FROM users WHERE email = ? AND password = ?";
  db.query(sql, [email, password], (err, results) => {
    if (err) return res.status(500).send("DB error");
    if (results.length > 0) {
      res.send("Login successful! 🎉");
    } else {
      res.status(401).send("Invalid credentials");
    }
  });
});

app.listen(3000, () => console.log("Server running at http://localhost:3000"));
