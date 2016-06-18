use HTTPoison.Base

exchange = "TESTEX"
stock = "FOOBAR"
account = "EXB123456"
api_ky = "5b51c9a47e24dd195549349b054fcb1912345181"
api_url = "https://api.stockfighter.io/ob/api/"

# get a quote

case HTTPoison.get! "#{api_url}/venues/#{exchange}/stocks/#{stock}/quote" do
  {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
    IO.puts body
  {:ok, %HTTPoison.Response{status_code: 404}} ->
    IO.puts "Not found :("
  {:error, %HTTPoison.Error{reason: reason}} ->
    IO.inspect reason
end

# buy or sell

# filled?

# repeat
