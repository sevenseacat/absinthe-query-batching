# Absinthe query batching example

An example implementation of using Absinthe's `batch/3` helper function to batch queries together for efficiency when resolving field values.

I wrote more about this in a blog post, _[Efficiently querying data in batches using Absinthe](https://sevenseacat.net/posts/2021/querying-batches-with-absinthe/)_.

## Setup

```
git clone https://github.com/sevenseacat/absinthe-query-batching.git
cd absinthe-query-batching
mix deps.get
mix ecto.setup
```

## Run

```
mix phx.server
```

And you can visit the GraphiQL interface at https://localhost:4000/graphiql
