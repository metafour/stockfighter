defmodule Stockfighter do
  exchange = "TESTEX"
  stock = "FOOBAR"
  account = "EXB123456"
  api_key = ""
  api_url = "https://api.stockfighter.io/ob/api/"

  case HTTPoison.get! "#{api_url}/venues/#{exchange}/stocks/#{stock}/quote" do
    {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
      IO.puts body
    {:ok, %HTTPoison.Response{status_code: 404}} ->
      IO.puts "Not found :("
    {:error, %HTTPoison.Error{reason: reason}} ->
      IO.inspect reason
  end
end
