# frozen_string_literal: true

module QywechatApi
  module Configuration
    # config

    attr_accessor :corpid, :corpsecret

    def initialize
      @corpid = nil
      @corpsecret = nil
    end
  end
end
