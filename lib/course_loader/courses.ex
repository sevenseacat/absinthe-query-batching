defmodule CourseLoader.Courses do
  import Ecto.Query

  def list_courses do
    CourseLoader.Repo.all(CourseLoader.Courses.Course)
  end

  def count_course_enrolments(enrolment_type, course_ids) do
    from(
      e in CourseLoader.Courses.Enrolment,
      select: {e.course_id, count(e.course_id)},
      group_by: e.course_id,
      where: e.course_id in ^course_ids and e.type == ^enrolment_type
    )
    |> CourseLoader.Repo.all()
    |> Enum.into(%{})
  end
end
