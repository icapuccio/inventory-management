# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :inventory_management,
  ecto_repos: [InventoryManagement.Repo]

# Configures the endpoint
config :inventory_management, InventoryManagementWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7IkoAGOClNHIdNY0/QKeVHn6pfxE0Gpex/YJB33ewl1tRrDvbqYsNEauT4dJe36d",
  render_errors: [view: InventoryManagementWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: InventoryManagement.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
