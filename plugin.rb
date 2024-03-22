# name: swapd-swapcrypto
# version: 3.2
# authors: Communiteq
# about: Adds /swap and /crypto routes. The sidebar entries are in Support Tickets.
# url: https://github.com/communiteq/swapd-swapcrypto

%i(common desktop mobile).each do |type|
  register_asset "stylesheets/swapcrypto/#{type}.scss", type
end

after_initialize do
  require_dependency "application_controller"
  class ::SwapController < ::ApplicationController
    def index
      render text: ""
    end
    def crypto
      render text: ""
    end
  end

  ::Discourse::Application.routes.append do
    get "/swap" => "swap#index"
    get "/crypto" => "swap#crypto"
  end

end
