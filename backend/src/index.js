import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';
import sequelize from './database.js';
import ScamEntry from './models/scamEntry.js';
import router from './routes/index.js'; 

const app = express();
const port = process.env.PORT || 3000;
const allowedOrigins = [
  'http://localhost:3000'
];

app.use(
  cors({
    origin: '*'
  })
);

// parse requests of content-type - application/json
app.use(bodyParser.json());
// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

app.use('/api', router);

sequelize.sync().then(() => {
  app.listen(port, () => {
    console.log(`SafeSG Backend on ${port}`);
  });
});
