require 'httparty'

require 'playfabsdk/configuration'
require 'playfabsdk/client/auth'

module PlayFabSDK
  def self.configure(&block)
    yield configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.post(uri, body, authtype, authvalue)
    url = "https://#{@configuration.title_id}#{@configuration.production_environment_url}#{uri}"
    headers = {'Content-Type' => 'application/json'}

    unless authtype.nil?
      headers[authtype] = authvalue
    end

    result = HTTParty.post(url, :body => body, :headers => headers)
  end
end
