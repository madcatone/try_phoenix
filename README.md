# Phoenix framework with Rails developer's first date

## assets

> 等於`app/assets`

## config
`"config/#{Mix.env}.exs"`

> 實際設定環境變量的地方，等於`config/#{Rails.env}.rb, config/databases.yml`

`"config/#{Mix.env}.secret.exs"`

> 設定secrets的地方，等於`config/secrets.yml`

## deps

> 類似gem安裝後的套件位置

## lib
> app/controller, app/model 的綜合
```elixir
#{app_name} folder -> model
#{app_name}_web folder -> controller, template, view
#{app_name}.endpoint.ex -> endpoint settings
#{app_name}.gettext.ex -> i18n settings
#{app_name}.router.ex -> route settings
#{app_name}.ex -> ? settings
#{app_name}_web.ex -> define controller/route/view/channel
```

## priv

```
priv/repo/migrations -> db/migrate
priv/repo/seeds.exs -> db/seeds.rb
priv/static -> assets ?
```

## test
> test

## mix.exs
> 類似定義Gemfile的地方
```elixir
  defp deps do
    [
      {:phoenix, "~> 1.3.1"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.2"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, "~> 2.10"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:poison, "~> 3.1"},
      {:mariaex, "~> 0.7"},
      {:yamerl, github: "yakaz/yamerl"},
    ]
  end
```

# PhoenixHello

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
