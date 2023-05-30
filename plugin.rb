# name: swapd-swapcrypto
# version: 1.0
# author: richard@communiteq.com
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
