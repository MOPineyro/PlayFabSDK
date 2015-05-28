require 'json'
require 'httparty'

require 'playfabsdk/configuration'


module PlayFabSDK
  def self.configure(&block)
    yield configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.post(uri, body, authtype, authvalue)
    @result = HTTParty.post("https://#{@configuration.title_id}#{@configuration.production_environment_url}#{uri}",
                            :body => body,
                            :headers => { 'Content-Type' => 'application/json'} )
  end

  def self.RegisterPlayFabUser(username, email, password)
    @uri = '/Client/RegisterPlayFabUser'
    @body = {'TitleId' => @configuration.title_id,
             'Username' => username,
             'Email' => email,
             'Password' => password}.to_json
    self.post(@uri, @body, nil, nil)
  end

  private_class_method :configuration
end
