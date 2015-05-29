Gem::Specification.new do |s|
  s.name        = 'playfabsdk'
  s.version     = '0.0.1'
  s.date        = '2015-04-30'
  s.summary     = "PlayFab SDK for ruby applications"
  s.description = "PlayFab SDK for ruby applications"
  s.authors     = ["Andrew Butcher"]
  s.email       = 'abutcher@afrolegs.com'
  s.files       = ["lib/playfabsdk.rb",
                   "lib/playfabsdk/client/auth.rb",
                   "lib/playfabsdk/configuration.rb"]
  s.homepage    = 'https://github.com/abutcher/PlayFabSDK'
  s.license     = 'Apache 2.0'

  s.add_dependency('httparty')
end
