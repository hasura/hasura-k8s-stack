import express from 'express';
import morgan from 'morgan';

import echo from './echo';

const app = express();
app.use(express.json()); 
app.use(morgan('tiny'));

app.get('/', (req, res) => res.send('event triggers are listening for requests'));

app.post('/echo', echo);

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`event triggers listening on port ${port}!`))