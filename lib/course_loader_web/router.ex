defmodule CourseLoaderWeb.Router do
  use CourseLoaderWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CourseLoaderWeb do
    pipe_through :api
  end
end
