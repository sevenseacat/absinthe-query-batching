defmodule CourseLoader.Courses.Course do
  use Ecto.Schema

  schema "courses" do
    field :code, :string
    field :name, :string
    has_many :enrolments, CourseLoader.Courses.Enrolment
  end
end
