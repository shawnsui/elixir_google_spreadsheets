use Mix.Config

config :elixir_google_spreadsheets, :client,
  request_workers: 100,
  max_demand: 100,
  max_interval: :timer.minutes(1),
  interval: 100,
  credentials: System.get_env("GCP_CREDENTIALS")
