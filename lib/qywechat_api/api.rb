# frozen_string_literal: true

module QywechatApi
  module Api
    include Routable

    resources :token
    resources :wedoc
    resources :smartsheet
    resources :spreadsheet
  end
end
