defmodule CourseLoaderWeb.GraphQL.Schema do
  use Absinthe.Schema

  import_types(CourseLoaderWeb.GraphQL.ContentTypes)

  alias CourseLoaderWeb.GraphQL.Resolvers

  query do
    @desc "Get all courses"
    field :courses, list_of(:course) do
      resolve(&Resolvers.list_courses/3)
    end
  end
end
