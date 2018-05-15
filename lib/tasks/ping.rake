desc "Pings the server every 5 minutes"
task ping_server: :environment do
  RestClient.get 'http://www.nodelabs.eu'
end

