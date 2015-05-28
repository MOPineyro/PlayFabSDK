Gem::Specification.new do |s|
  s.name        = 'playfabsdk'
  s.version     = '0.0.1'
  s.date        = '2015-04-30'
  s.summary     = "PlayFab SDK for rails applications"
  s.description = "PlayFab SDK for rails applications"
  s.authors     = ["Andrew Butcher"]
  s.email       = 'abutcher@afrolegs.com'
  s.files       = ["lib/playfabsdk.rb",
                   "lib/playfabsdk/configuration.rb"]
  s.homepage    = 'http://rubygems.org/gems/hola'
  s.license     = 'Apache 2.0'
  s.add_dependency('httparty')
end
