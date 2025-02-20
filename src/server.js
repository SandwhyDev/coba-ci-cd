import express from "express";
import cors from "cors";
import path from "path";
import LoadEnv from "./libs/LoadEnv";

LoadEnv();

const app = express();
const PORT = process.env.PORT || 8000;

//MIDDLEWARE
app.use(cors());
app.use(express.json({ limit: "100mb" }));
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "/public")));

app.get("/", (req, res) => {
  res.send("test version 2");
});

//ROUTES
//app.use('/api', routes)

//LISTENER
app.listen(PORT, "0.0.0.0", () => {
  console.log(`
    SERVER RUNNING TO PORT ${PORT}
    `);
});
