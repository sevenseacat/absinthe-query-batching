defmodule CourseLoaderWeb.GraphQL.Resolvers do
  alias CourseLoader.Courses

  def list_courses(_, _, _) do
    {:ok, Courses.list_courses()}
  end

  def course_auto_enrolment_count(course, _, _) do
    {:ok, Courses.count_course_enrolments(course, "auto")}
  end

  def course_manual_enrolment_count(course, _, _) do
    {:ok, Courses.count_course_enrolments(course, "manual")}
  end
end
