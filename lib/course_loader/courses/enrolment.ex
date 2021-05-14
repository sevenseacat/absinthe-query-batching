defmodule CourseLoader.Courses.Enrolment do
  use Ecto.Schema

  schema "enrolments" do
    field :type, :string
    belongs_to :course, CourseLoader.Courses.Course
    belongs_to :student, CourseLoader.Courses.Student
  end
end
