require 'json'

module PlayFabSDK
  module Client
    module Account
      def self.GetAccountInfo(playfabid, sessionkey)
        uri = '/Client/GetAccountInfo'
        body = {'PlayFabId' => playfabid}.to_json
        PlayFabSDK.post(uri, body, 'X-Authentication', sessionkey)
      end
    end
  end
end
