const express = require("express");
require("dotenv").config();
require("./models/db");

const userRouter = require("./routes/user");
const User = require("./models/user");
const app = express();

// app.use((req, res, next) => {
//   req.on("data", (chunk) => {
//     const data =JSON.parse(chunk);
//     req.body = data
//     next();
//   });
// });

app.use(express.json());
app.use(userRouter);

// const test = async (Email, Password) =>{
//   const user = await User.findOne({Email: Email});
//   const result = await user.ComparePassword(Password);
//   console.log(result);
// }
// test('aaaaallouchhatim@gmail.com', 'hallouch13qq7@');
// *******************************************
// testing done and noice

app.get("/test", (req, res) => {
  res.send("please");
});

app.get("/", (req, res) => {
  res.json({ success: true, message: "Back End Zone 🔥" });
});

app.listen(8000, () => {
  console.log("listening!!");
});
