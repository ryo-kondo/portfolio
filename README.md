# portfolio

- launch
git clone https://github.com/ryo-kondo/portfolio.git

- set your database info

You could write config.

```
# config/dev.secret.exs

config :app, App.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "name",
  password: "password",
  database: "db_name",
  hostname: "host",
  pool_size: 10
```

docker-compose build

docker-compose run app mix ecto.create

docker-compose up