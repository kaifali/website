use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :kaifa_li, KaifaLi.Endpoint,
  secret_key_base: "sample"

# Configure your database
config :kaifa_li, KaifaLi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "sample",
  password: "sample",
  database: "sample",
  pool_size: 20

# BasicAuth
config :kaifa_li, :admin_basic_auth, [
  realm: "Admin Area",
  username: "sample",
  password: "sample"
]
