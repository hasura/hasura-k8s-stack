import { buildSchema } from 'graphql';

// Construct a schema, using GraphQL schema language
const schema = buildSchema(`
  type Query {
    hello:  String
  }
`);

const root = {
  hello: () => {
    return 'Hello world!';
  }
}

export { schema, root };