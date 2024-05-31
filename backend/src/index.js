import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import sequelize from "./database.js";
import multer from "multer";
import { fileURLToPath } from "url";
import path from "path";
import Tesseract from "tesseract.js";
import ScamEntry from "./models/scamEntry.js";
import router from "./routes/index.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();
const port = process.env.PORT || 3000;
const allowedOrigins = ["http://localhost:3000"];

app.use(
  cors({
    origin: "*",
  })
);

// parse requests of content-type - application/json
app.use(bodyParser.json());
// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

app.use("/api", router);

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, path.join(__dirname, "../uploads"));
  },
  filename: (req, file, cb) => {
    cb(null, `${Date.now()}-${file.originalname}`);
  },
});

const upload = multer({ storage });

app.post("/api/extract-text", upload.single("image"), async (req, res) => {
  const filePath = path.join(__dirname, "../uploads", req.file.filename);

  Tesseract.recognize(filePath, "eng")
    .then((result) => {
      res.status(200).json({ text: result.data.text });
    })
    .catch((error) => {
      res.status(500).json({ error: "Error extracting text from image." });
    });
});

// Sync database and start server
sequelize.sync().then(() => {
  app.listen(port, () => {
    console.log(`SafeSG Backend on ${port}`);
  });
});
