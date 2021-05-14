defmodule CourseLoader.Courses do
  def list_courses do
    CourseLoader.Repo.all(CourseLoader.Courses.Course)
  end
end
