# frozen_string_literal: true

require_relative "qywechat_api/version"

module QywechatApi
  class << self
    # 配置
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end

    def client
      @client ||= Client.new
    end

    def access_token
      client.api.token.get_access_token
    end
  end
end
