# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :kaifa_li, namespace: KaifaLi

config :kaifa_li, ecto_repos: [KaifaLi.Repo]

# Configures the endpoint
config :kaifa_li, KaifaLiWeb.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "zycYow1DEnv/sb095xJzqty3KWngoUj+gtVu7lyJWzO14s7aLilry1s/Ko4JJuFY",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: KaifaLi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
