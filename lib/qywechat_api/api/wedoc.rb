# frozen_string_literal: true

module QywechatApi
  module Api
    module Wedoc
      # 文档

      # 新建文档
      # doc: https://developer.work.weixin.qq.com/document/path/97464
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/create_doc?access_token=ACCESS_TOKEN
      # payload
      # spaceid     string    否 空间spaceid。若指定spaceid，则fatherid也要同时指定
      # fatherid    string    否 父目录fileid, 在根目录时为空间spaceid
      # doc_type    uint32    是 文档类型, 3:文档 4:表格 10:智能表格
      # doc_name    string    是 文档名字（注意：文件名最多填255个字符, 超过255个字符会被截断）
      # admin_users string[]  否 文档管理员userid
      def create_doc(payload)
        client.post(
          '/cgi-bin/wedoc/create_doc',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 重命名文档
      # doc: https://developer.work.weixin.qq.com/document/path/97745
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/rename_doc?access_token=ACCESS_TOKEN
      # payload
      # docid     string  否 文档docid（docid、formid只能填其中一个） ，仅可修改应用自己创建的文档
      # formid    string  否 收集表id（docid、formid只能填其中一个） ，仅可修改应用自己创建的收集表
      # new_name  string  是 重命名后的文档名 （注意：文档名最多填255个字符, 英文算1个, 汉字算2个, 超过255个字符会被截断）
      def rename_doc(payload)
        client.post(
          '/cgi-bin/wedoc/rename_doc',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 删除文档
      # doc: https://developer.work.weixin.qq.com/document/path/97746
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/del_doc?access_token=ACCESS_TOKEN
      # payload
      # docid   string  否 文档docid（docid、formid只能填其中一个），仅可删除应用自己创建的文档
      # formid  string  否 收集表id（docid、formid只能填其中一个），仅可删除应用自己创建的收集表
      def del_doc(payload)
        client.post(
          '/cgi-bin/wedoc/del_doc',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 获取文档基础信息
      # doc: https://developer.work.weixin.qq.com/document/path/97747
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/get_doc_base_info?access_token=ACCESS_TOKEN
      # payload
      # docid   string  是 文档docid
      def get_doc_base_info(payload)
        client.post(
          '/cgi-bin/wedoc/get_doc_base_info',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 分享文档
      # doc: https://developer.work.weixin.qq.com/document/path/97748
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/doc_share?access_token=ACCESS_TOKEN
      # payload
      # docid string  否 文档id（docid、formid只能填其中一个）
      def doc_share(payload)
        client.post(
          '/cgi-bin/wedoc/doc_share',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end
    end
  end
end
