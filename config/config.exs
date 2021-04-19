# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hanabira,
  ecto_repos: [Hanabira.Repo]

config :hanabira, Hanabira.Repo,
  migration_timestamps: [type: :timestamptz]

# Configures the endpoint
config :hanabira, HanabiraWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FEL3fTovtYnhwFTHFHANR7TiPHh4joK6Nz52XDjFZEQZLcsMAW0QYw150AuyqbUT",
  render_errors: [view: HanabiraWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hanabira.PubSub,
  live_view: [signing_salt: "k/Xp2+8B"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
