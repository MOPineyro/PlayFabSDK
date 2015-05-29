require 'json'

module PlayFabSDK
  module Client
    module Auth
      def self.RegisterPlayFabUser(username, email, password)
        uri = '/Client/RegisterPlayFabUser'
        body = {'TitleId' => PlayFabSDK.configuration.title_id,
                'Username' => username,
                'Email' => email,
                'Password' => password}.to_json
        PlayFabSFK.post(uri, body, nil, nil)
      end

      def self.LoginWithPlayFab(username, password)
        uri = '/Client/LoginWithPlayFab'
        body = {'TitleId' => PlayFabSDK.configuration.title_id,
                'Username' => username,
                'Password' => password}.to_json
        PlayFabSDK.post(uri, body, nil, nil)
      end

      def self.LoginWithEmailAddress(email, password)
        uri = '/Client/LoginWithEmailAddress'
        body = {'TitleId' => PlayFabSDK.configuration.title_id,
                'Email' => email,
                'Password' => password}.to_json
        PlayFabSDK.post(uri, body, nil, nil)
      end
    end
  end
end
