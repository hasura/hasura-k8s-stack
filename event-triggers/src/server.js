import express from 'express';
import morgan from 'morgan';

import echo from './echo';

const app = express();
app.use(express.json()); 
app.use(morgan('tiny'));

const port = process.env.PORT || 3000;

app.get('/', (req, res) => res.send('event triggers are listening for requests'));

app.post('/echo', echo);

app.listen(port, () => console.log(`event triggers listening on port ${port}!`))