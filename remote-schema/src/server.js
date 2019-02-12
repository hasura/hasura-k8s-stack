import express from 'express';
import morgan from 'morgan';
import graphqlHTTP from 'express-graphql';

import { schema, root } from './graphql';

const app = express();
app.use(express.json()); 
app.use(morgan('tiny'));

app.get('/', (req, res) => res.send('graphql server is listening for requests at /graphql'));

app.use('/graphql', graphqlHTTP({
  schema: schema,
  rootValue: root,
  graphiql: process.env.DISABLE_GRAPHIQL === 'true' ? false: true,
}));

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`graphql server listening on port ${port}!`))