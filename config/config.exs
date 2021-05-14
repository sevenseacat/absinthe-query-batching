# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :course_loader,
  ecto_repos: [CourseLoader.Repo]

# Configures the endpoint
config :course_loader, CourseLoaderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HyBmPw+i6ci+bHo11V1TFveSOZL6Ym/qEoOUhkTm3fiLHJsjz5GqCVHQ7w4siehN",
  render_errors: [view: CourseLoaderWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: CourseLoader.PubSub,
  live_view: [signing_salt: "NOZJtl0U"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
