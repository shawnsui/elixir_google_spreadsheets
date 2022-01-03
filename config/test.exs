use Mix.Config

config :elixir_google_spreadsheets,
  spreadsheet_id: "1-WeAWRgVhWY41YRXjkWkYpgCOCAXjAbyBmfXRTBxVXs"

config :elixir_google_spreadsheets, :client, request_workers: 30

if File.exists?("config/test.local.exs") do
  import_config "test.local.exs"
end
