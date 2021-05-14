defmodule CourseLoaderWeb.GraphQL.Resolvers do
  alias CourseLoader.Courses

  import Absinthe.Resolution.Helpers, only: [batch: 3]

  def list_courses(_, _, _) do
    {:ok, Courses.list_courses()}
  end

  def course_auto_enrolment_count(course, _, _) do
    batch({Courses, :count_course_enrolments, "auto"}, course.id, fn results ->
      {:ok, Map.get(results, course.id, 0)}
    end)
  end

  def course_manual_enrolment_count(course, _, _) do
    batch({Courses, :count_course_enrolments, "manual"}, course.id, fn results ->
      {:ok, Map.get(results, course.id, 0)}
    end)
  end
end
