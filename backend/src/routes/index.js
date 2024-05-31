import express from "express";
import ScamEntry from "../models/scamEntry.js";
import { checkScam } from "../controller/index.js";
import ollama from "ollama";

const router = express.Router();

router.post("/scam_entry", async (req, res) => {
  try {
    const { title, description } = req.body;
    const newEntry = await ScamEntry.create({ title, description });
    res.status(201).json(newEntry);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get("/scam_entry", async (req, res) => {
  try {
    const entries = await ScamEntry.findAll();
    res.status(200).json(entries);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.post("/check_scam", async (req, res) => {
  const { text } = req.body;
  const responseBody = await askOllama(text);

  res.json(responseBody);
});

router.post("/ask-query", async (req, res) => {
  try {
    const { query } = req.body;

    const response = await ollama.chat({
      model: "sgsmodel",
      messages: [{ role: "user", content: query }],
    });

    res.json({ reply: response.message.content });
  } catch (error) {
    console.error("Error asking query:", error);
    res
      .status(500)
      .json({ error: "An error occurred while processing the query." });
  }
});

async function askOllama(query) {
  try {
    const response = await ollama.chat({
      model: "sgsmodel",
      messages: [{ role: "user", content: query }],
    });
    
    console.log(response.message.content)
    const jsonObject = JSON.parse(response.message.content)

    return jsonObject
  } catch (error) {
    console.error("Error asking query:", error);
  }
}

export default router;

export { askOllama };
