defmodule GSS do
  @moduledoc """
  Bootstrap Google Spreadsheet application.
  """

  use Application

  def start(_type, _args) do
    config = Application.get_env(:elixir_google_spreadsheets, :client)

    if config != nil do
      if Keyword.get(config, :credentials) != nil do
        GSS.Supervisor.init([])
      else
        Supervisor.start_link([], strategy: :one_for_all, name: __MODULE__)
      end
    end
  end

  @doc """
  Read config settings scoped for GSS.
  """
  @spec config(atom(), any()) :: any()
  def config(key, default \\ nil) do
    Application.get_env(:elixir_google_spreadsheets, key, default)
  end
end
