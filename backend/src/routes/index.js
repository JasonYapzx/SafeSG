import express from 'express';
import ScamEntry from '../models/scamEntry.js';

const router = express.Router();

router.post('/scam_entry', async (req, res) => {
  try {
    const { title, description } = req.body;
    const newEntry = await ScamEntry.create({ title, description });
    res.status(201).json(newEntry);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

router.get('/scam_entry', async (req, res) => {
  try {
    const entries = await ScamEntry.findAll();
    res.status(200).json(entries);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

export default router;
