defmodule CourseLoaderWeb.GraphQL.ContentTypes do
  use Absinthe.Schema.Notation

  object :course do
    field :id, non_null(:id)
    field :code, non_null(:string)
    field :name, non_null(:string)
  end
end
