import express from 'express';
import cors from 'cors';

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

// Route de test pour ton application mobile
app.get('/health', (req, res) => {
  res.json({ 
    status: 'OK', 
    message: 'Le backend de FaDel est opérationnel !',
    database: 'PostgreSQL Connectée' 
  });
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`🚀 Serveur FaDel lancé sur http://localhost:${PORT}`);
});