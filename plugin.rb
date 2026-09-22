# name: swapd-swapcrypto
# version: 3.5.0
# authors: Communiteq
# about: Adds /swap and /crypto routes. The sidebar entries are in Support Tickets.
# url: https://github.com/communiteq/swapd-swapcrypto

%i(common desktop mobile).each do |type|
  register_asset "stylesheets/swapcrypto/#{type}.scss", type
end

after_initialize do
  class ::SwapController < ::ApplicationController
    def index
      render plain: ""
    end

    def crypto
      render plain: ""
    end
  end

  ::Discourse::Application.routes.append do
    get "/swap" => "swap#index"
    get "/crypto" => "swap#crypto"
  end
end
