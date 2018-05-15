desc "Pings the server every 5 minutes"
task ping_server: :environment do
  require "net/http"

  if ENV['PING_URL']
    uri = URI(ENV['PING_URL'])
    Net::HTTP.get_response(uri)
  end
end

