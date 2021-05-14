defmodule CourseLoader.Courses do
  import Ecto.Query

  def list_courses do
    CourseLoader.Repo.all(CourseLoader.Courses.Course)
  end

  def count_course_enrolments(%{id: id}, enrolment_type) do
    from(
      e in CourseLoader.Courses.Enrolment,
      select: count(e.course_id),
      where: e.course_id == ^id and e.type == ^enrolment_type
    )
    |> CourseLoader.Repo.one()
  end
end
