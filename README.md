# PlayFabSDK

Playfab SDK for rails applications

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'playfabsdk'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install playfabsdk

## Usage

```ruby
require 'playfabsdk'

PlayFabSDK.configure do |config|
  config.title_id = '0000'
    config.developer_secret_key = '9999999999999333333322222223333333333333'
  end

result = PlayFabSDK.RegisterPlayFabUser('abutcher', 'abutcher@example.com', 'TestTest123(')
```

```ruby
result.body = {"code":200,
               "status":"OK",
			   "data":{"PlayFabId":"10931252888739651331",
			   "SessionTicket":"4D2----8D11F4249A80000-7C64AB0A9F1D8D1A.CD803BF233CE76C",
			   "Username":"abutcher"}}
```
