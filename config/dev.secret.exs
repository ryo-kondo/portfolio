use Mix.Config

config :app, App.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "secret",
  database: "app_dev",
  hostname: "mysql",
  pool_size: 10