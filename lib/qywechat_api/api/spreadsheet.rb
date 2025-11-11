# frozen_string_literal: true

module QywechatApi
  module Api
    module Spreadssheet
      # 表格

      # 编辑表格内容
      # doc: https://developer.work.weixin.qq.com/document/path/101190
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/spreadsheet/batch_update?access_token=ACCESS_TOKEN
      # payload
      # docid     string    是 文档的docid
      # requests  object[]  是 更新操作列表，详见 UpdateRequest
      def batch_update(payload)
        client.post(
          '/cgi-bin/wedoc/spreadsheet/batch_update',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 获取表格行列信息
      # doc: https://developer.work.weixin.qq.com/document/path/98031
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/spreadsheet/get_sheet_properties?access_token=ACCESS_TOKEN
      # payload
      # docid string  是 在线表格的docid
      def get_sheet_properties(payload)
        client.post(
          '/cgi-bin/wedoc/spreadsheet/get_sheet_properties',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 获取表格数据
      # doc: https://developer.work.weixin.qq.com/document/path/98030
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/spreadsheet/get_sheet_range_data?access_token=ACCESS_TOKEN
      # payload
      # docid     string  是 在线表格唯一标识
      # sheet_id  string  是 工作表ID，工作表的唯一标识
      # range     string  是 查询的范围，格式遵循 A1表示法
      def get_sheet_range_data(payload)
        client.post(
          '/cgi-bin/wedoc/spreadsheet/get_sheet_range_data',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end
    end
  end
end
