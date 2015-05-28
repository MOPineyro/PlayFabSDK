module PlayFabSDK
  class Configuration
    DEFAULTS = {
      use_development_environment: false,
      development_environment_url: ".playfabsandbox.com",
      production_environment_url: ".playfabapi.com",
      logic_server_url: nil,
      title_id: nil,
      developer_secret_key: nil
    }

    DEFAULTS.each_key do |attribute|
      attr_accessor attribute
    end

    def initialize(opts={})
      DEFAULTS.each do |attribute, value|
        send("#{attribute}=".to_sym, opts.fetch(attribute, value))
      end
    end
  end
end
