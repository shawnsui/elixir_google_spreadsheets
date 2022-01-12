defmodule GSS.SpreadsheetListTest do
  use ExUnit.Case, async: true

  # @test_spreadsheet_id Application.fetch_env!(:elixir_google_spreadsheets, :spreadsheet_id)

  setup context do
    {:ok, pid} =
      GSS.Spreadsheet.Supervisor.spreadsheet(
        "1tl0G3su6EZZMaU6aYTHp8N-_6H1oXx8or0BS2Sw_Fx0",
        list_name: "Funnel Data"
      )

    {:ok, spreadsheet: pid}
  end

  test "reading lines", %{spreadsheet: pid} do
    result = GSS.Spreadsheet.read_row(pid, 5)
    IO.inspect(result)
  end
end
