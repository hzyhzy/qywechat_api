# frozen_string_literal: true

module QywechatApi
  module Api
    module Token
      # token

      def get_access_token
        Rails.cache.fetch('exception_notifier::qy_wechat_notifier', expires_in: 6800.seconds) do
          refresh_access_token
        end
      end

      def refresh_access_token
        res = client.get('/cgi-bin/gettoken', params: { corpid: QywechatApi.configuration.corpid, corpsecret: QywechatApi.configuration.corpsecret })
        res["access_token"]
      end
    end
  end
end
