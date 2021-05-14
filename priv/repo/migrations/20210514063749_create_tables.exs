defmodule CourseLoader.Repo.Migrations.CreateTables do
  use Ecto.Migration

  def change do
    create table(:courses) do
      add :code, :string, null: false
      add :name, :string, null: false
    end

    create table(:students) do
      add :name, :string, null: false
    end

    create table(:enrolments) do
      add :type, :string, null: false
      add :student_id, references(:students)
      add :course_id, references(:courses)
    end
  end
end
