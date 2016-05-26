use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :home_accounting, HomeAccounting.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :home_accounting, HomeAccounting.Repo,
  adapter: Ecto.Adapters.Postgres,
  #username: "postgres",
  #password: "postgres",
  database: "home_accounting_dev",
  hostname: "localhost",
  pool_size: 10

config :monetized, config: [
  delimiter: ".",
  separator: ",",
  currency: "ARS"
]
