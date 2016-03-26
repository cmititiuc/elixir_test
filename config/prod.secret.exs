use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :elixir_test, ElixirTest.Endpoint,
  secret_key_base: "hb1MV7X7UpQbYnBdYs3iGy7dspoQcymvDKXA8a/ZwOxUCKL+6YTenkt31p0RQ4z6"

# Configure your database
config :elixir_test, ElixirTest.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "elixir_test_prod",
  pool_size: 20
