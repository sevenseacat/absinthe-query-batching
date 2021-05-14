defmodule CourseLoader.Repo do
  use Ecto.Repo,
    otp_app: :course_loader,
    adapter: Ecto.Adapters.Postgres
end
