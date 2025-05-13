// @ts-types="npm:@types/express"

import express from "npm:express";
import mysql from "npm:mysql2";
import cors from "npm:cors";
const app = express();
app.listen(5050)
console.log(`Active on 5050`)

app.use(cors())
app.use(express.json())
const connection = mysql.createConnection({
host: 'localhost',
user: 'web',
password: 'someonesPassword',
database: 'Gathering'
})

connection.connect((err)=>{
  if (err) console.error(err)
    console.log('eges');
connection.query("SELECT * FROM `theGathering` WHERE `Name` = ? AND Password = ?", [info[0], info[1]], (err, result)=>{




if (err) throw err
console.log(result, "res");
response.send(result)
})

})