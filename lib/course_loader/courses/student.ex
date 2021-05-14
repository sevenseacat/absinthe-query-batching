defmodule CourseLoader.Courses.Student do
  use Ecto.Schema

  schema "students" do
    field :name, :string
  end
end
