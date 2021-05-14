defmodule CourseLoaderWeb.GraphQL.Resolvers do
  def list_courses(_, _, _) do
    {:ok, CourseLoader.Courses.list_courses()}
  end

  def course_auto_enrolment_count(_, _, _), do: {:ok, 0}
  def course_manual_enrolment_count(_, _, _), do: {:ok, 0}
end
