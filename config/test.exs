use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :kaifa_li, KaifaLiWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :kaifa_li, KaifaLi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "kaifa_li_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# BasicAuth
config :kaifa_li, :admin_basic_auth,
  realm: "Admin Area",
  username: "admin",
  password: "secret"
