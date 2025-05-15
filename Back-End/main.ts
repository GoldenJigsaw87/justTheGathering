// @ts-types="npm:@types/express"

import express from "npm:express";
import mysql from "npm:mysql2";
import cors from "npm:cors";

const app = express();
const PORT = 3000; // Use one port only

app.use(cors());
app.use(express.json());

// MySQL connection
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'web',
  password: 'someonesPassword',
  database: 'Gathering',
});

connection.connect((err) => {
  if (err) {
    return console.error("Connection error:", err);
  }
  console.log('Connected to MySQL database');
});

// Example POST endpoint to update a meeting
app.post("/update", (req, res) => {
  const { meetingTime, turnomentName, address, userName, theme } = req.body;
  // INSERT INTO `theGathering`(`meetingTime`, `turnomentName`, `address`, `userName`, `theme`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')
  const sql = `
    UPDATE theGathering 
    SET Name = ?, Password = ?, meetingLocation = ?, meetingTime = ?
    WHERE id = ?`; // Change to match your table's unique identifier

  connection.query(
    sql,
    [theme, userName, address, meetingTime, turnomentName],
    (err, result) => {
      if (err) {
        console.error("Query error:", err);
        return res.status(500).send("Database error");
      }
      res.send(result);
    }
  );
});

// Start server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
