defmodule CourseLoaderWeb.GraphQL.Resolvers do
  def list_courses(_, _, _) do
    {:ok, CourseLoader.Courses.list_courses()}
  end
end
