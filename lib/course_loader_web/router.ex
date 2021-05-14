defmodule CourseLoaderWeb.Router do
  use CourseLoaderWeb, :router

  forward("/api", Absinthe.Plug, schema: CourseLoaderWeb.GraphQL.Schema)

  if Mix.env() == :dev do
    forward("/graphiql", Absinthe.Plug.GraphiQL, schema: CourseLoaderWeb.GraphQL.Schema)
  end
end
