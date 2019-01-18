# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :test_phauxth,
  ecto_repos: [TestPhauxth.Repo]

# Configures the endpoint
config :test_phauxth, TestPhauxthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Sr6hw7qm9QnvlSCAD/E/vRXZbYy54VeOhmnH8QlCxg0ZhwjrZK99lPekOaaawbzC",
  render_errors: [view: TestPhauxthWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestPhauxth.PubSub, adapter: Phoenix.PubSub.PG2]

# Phauxth authentication configuration
config :phauxth,
  user_context: TestPhauxth.Accounts,
  crypto_module: Comeonin.Argon2,
  token_module: TestPhauxthWeb.Auth.Token

# Mailer configuration
config :test_phauxth, TestPhauxthWeb.Mailer,
  adapter: Bamboo.LocalAdapter

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
