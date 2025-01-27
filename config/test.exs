import Config
config :tunez, token_signing_secret: "VsvF709a71yhMH/Um48WRvnnmazmG13t"
config :ash, disable_async?: true

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :tunez, Tunez.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "tunez_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: System.schedulers_online() * 2

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tunez, TunezWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "XL6dpvC8K5TS6RqzR3PTe/6RW5749mQMlVgx4gKrtphQeBUiVduUdXGsVuEGg1eK",
  server: false

# In test we don't send emails.
config :tunez, Tunez.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
