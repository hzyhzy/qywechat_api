# frozen_string_literal: true

module QywechatApi
  module Api
    module Smartsheet
      # 智能表单

      # 添加子表
      # doc: https://developer.work.weixin.qq.com/document/path/100196
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/add_sheet?access_token=ACCESS_TOKEN
      # payload
      # docid             string  是 文档的docid
      # properties        object  否 智能表属性
      # properties.title  string  否 智能表标题
      # properties.index  int32   否 智能表下标
      def add_sheet(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/add_sheet',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 删除子表
      # doc: https://developer.work.weixin.qq.com/document/path/100197
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/delete_sheet?access_token=ACCESS_TOKEN
      # payload
      # docid     string  是 文档的docid
      # sheet_id  string  是 删除的Smartsheet 子表 ID
      def delete_sheet(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/delete_sheet',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 更新子表
      # doc: https://developer.work.weixin.qq.com/document/path/100198
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/update_sheet?access_token=ACCESS_TOKEN
      # payload
      # docid               string  是 文档的docid
      # properties.sheet_id string  是 子表 ID
      # properties.title    string  否 子表标题
      def update_sheet(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/update_sheet',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 查询子表
      # doc: https://developer.work.weixin.qq.com/document/path/101182
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/get_sheet?access_token=ACCESS_TOKEN
      # payload
      # docid               string  是 文档的docid
      # sheet_id            string  否 指定子表ID查询
      # need_all_type_sheet bool    否 获取所有类型子表。为true时可获取包含仪表盘和说明页在内的所有类型的子表
      def get_sheet(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/get_sheet',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end


      # 添加视图
      # doc: https://developer.work.weixin.qq.com/document/path/100199
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/add_view?access_token=ACCESS_TOKEN
      # payload
      # docid             string                        是 文档的docid
      # sheet_id          string                        是 Smartsheet 子表ID
      # view_title        string                        是 视图标题
      # view_type         string                        是 视图类型。见ViewType
      # property_gantt    obect(GanttViewProperty)      否 甘特视图属性,添加甘特图时必填
      # property_calendar object(CalendarViewProperty)  否 日历视图属性，添加日历视图时必填
      def add_view(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/add_view',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 删除视图
      # doc: https://developer.work.weixin.qq.com/document/path/100200
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/delete_views?access_token=ACCESS_TOKEN
      # payload
      # docid     string    是 文档的docid
      # sheet_id  string    是 Smartsheet 子表ID
      # view_ids  string[]  是 要删除的视图ID列表
      def delete_views(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/delete_views',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 更新视图
      # doc: https://developer.work.weixin.qq.com/document/path/100201
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/update_view?access_token=ACCESS_TOKEN
      # payload
      # docid       string                是 文档的docid
      # sheet_id    string                是 Smartsheet 子表ID
      # view_id     string                是 视图ID
      # view_title  string                否 视图标题
      # property    object(ViewProperty)  否 视图的排序/过滤/分组/填色配置，详见ViewProperty
      def update_view(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/update_view',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 查询视图
      # doc: https://developer.work.weixin.qq.com/document/path/101183
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/get_views?access_token=ACCESS_TOKEN
      # payload
      # docid     string    是 文档的docid
      # sheet_id  string    是 Smartsheet 子表ID
      # view_ids  string[]  否 需要查询的视图 ID 数组
      # offset    uint32    否 偏移量，初始值为 0
      # limit     uint32    否 分页大小 , 每页返回多少条数据；当不填写该参数或将该参数设置为 0 时，如果总数大于 1000，一次性返回 1000 个视图，当总数小于 1000 时，返回全部视图；limit 最大值为 1000
      def get_views(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/get_views',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 添加字段
      # doc: https://developer.work.weixin.qq.com/document/path/100202
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/add_fields?access_token=ACCESS_TOKEN
      # payload
      # docid     string                是 文档的docid
      # sheet_id  string                是 表格ID
      # fields    object [] (AddFiled)  是 字段详情
      def add_fields(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/add_fields',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 删除字段
      # doc: https://developer.work.weixin.qq.com/document/path/100203
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/delete_fields?access_token=ACCESS_TOKEN
      # payload
      # docid     string    是 文档的docid
      # sheet_id  string    是 表格ID
      # field_ids string[]  是 需要删除的字段id列表
      def delete_fields(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/delete_fields',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 更新字段
      # doc: https://developer.work.weixin.qq.com/document/path/100204
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/update_fields?access_token=ACCESS_TOKEN
      # payload
      # docid     string                  是 文档的docid
      # sheet_id  string                  是 表格ID
      # fields    object [](UpdateField)  是 字段详情
      def update_fields(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/update_fields',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 添加记录
      # doc: https://developer.work.weixin.qq.com/document/path/100223
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/add_records?access_token=ACCESS_TOKEN
      # payload
      # docid     string                    是 文档的docid
      # sheet_id  string                    是 Smartsheet 子表ID
      # key_type  string(CellValueKeyType)  否 返回记录中单元格的key类型，默认用标题
      # records   Object[](AddRecord)       是 需要添加的记录的具体内容组成的 JSON 数组
      def add_records(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/add_records',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 查询字段
      # doc: https://developer.work.weixin.qq.com/document/path/101184
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/get_fields?access_token=ACCESS_TOKEN
      # payload
      # docid         string    是 文档的docid
      # sheet_id      string    是 表格ID
      # view_id       string    否 视图 ID
      # field_ids     string [] 否 由字段 ID 组成的 JSON 数组
      # field_titles  string [] 否 由字段标题组成的 JSON 数组
      # offset        int       否 偏移量，初始值为 0
      # limit         int       否 分页大小 , 每页返回多少条数据；当不填写该参数或将该参数设置为 0 时，如果总数大于 1000，一次性返回 1000 个字段，当总数小于 1000 时，返回全部字段；limit 最大值为 1000
      def get_fields(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/get_fields',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 删除记录
      # doc: https://developer.work.weixin.qq.com/document/path/100206
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/delete_records?access_token=ACCESS_TOKEN
      # payload
      # docid       string    是 文档的docid
      # sheet_id    tring     是 Smartsheet 子表ID
      # record_ids  string[]  是 要删除的记录 ID
      def delete_records(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/delete_records',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 更新记录
      # doc: https://developer.work.weixin.qq.com/document/path/100207
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/update_records?access_token=ACCESS_TOKEN
      # payload
      # docid     string                    是 文档的docid
      # sheet_id  string                    是 Smartsheet 子表ID
      # key_type  string(CellValueKeyType)  否 返回记录中单元格的key类型
      # records   Object[](UpdateRecord)    是 由需要更新的记录组成的 JSON 数组
      def update_records(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/update_records',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 查询记录
      # doc: https://developer.work.weixin.qq.com/document/path/101185
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/get_records?access_token=ACCESS_TOKEN
      # payload
      # docid         string                    是 文档的docid
      # sheet_id      string                    是 Smartsheet 子表ID
      # view_id       string                    否 视图 ID
      # record_ids    string[]                  否 由记录 ID 组成的 JSON 数组
      # key_type      string(CellValueKeyType)  否 返回记录中单元格的key类型
      # field_titles  string[]                  否 返回指定列，由字段标题组成的 JSON 数组 ，key_type 为 CELL_VALUE_KEY_TYPE_FIELD_TITLE 时有效
      # field_ids     string[]                  否 返回指定列，由字段 ID 组成的 JSON 数组 ，key_type 为 CELL_VALUE_KEY_TYPE_FIELD_ID 时有效
      # sort          Object[](Sort)            否 对返回记录进行排序
      # offset        uint32                    否 偏移量，初始值为 0
      # limit         uint32                    否 分页大小 , 每页返回多少条数据；当不填写该参数或将该参数设置为 0 时，如果总数大于 1000，一次性返回 1000 行记录，当总数小于 1000 时，返回全部记录；limit 最大值为 1000
      # ver           uint32                    否 版本号
      # filter_spec   object(FilterSpec)        否 过滤设置，不支持和sort一起使用
      def get_records(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/get_records',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 添加编组
      # doc: https://developer.work.weixin.qq.com/document/path/101178
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/add_field_group?access_token=ACCESS_TOKEN
      # payload
      # docid             string    是 文档的docid
      # sheet_id          string    是 表格ID
      # name              string    是 编组名称，不能和已有名称重复
      # children          object[]  否 编组内容
      # children.field_id string    否 字段id
      def add_field_group(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/add_field_group',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 删除编组
      # doc: https://developer.work.weixin.qq.com/document/path/101179
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/delete_field_groups?access_token=ACCESS_TOKEN
      # payload
      # docid           string    是 文档的docid
      # sheet_id        string    是 子表ID
      # field_group_ids string[]  是 要删除的编组 ID
      def delete_field_groups(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/delete_field_groups',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 更新编组
      # doc: https://developer.work.weixin.qq.com/document/path/101180
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/update_field_group?access_token=ACCESS_TOKEN
      # payload
      # docid             string    是 文档的docid
      # sheet_id          string    是 表格ID
      # field_group_id    string    是 编组id
      # name              string    否 编组名称，不能和已有名称重复
      # children          object[]  否 编组内容
      # children.field_id string    否 字段id
      def update_field_group(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/update_field_group',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end

      # 获取编组
      # doc: https://developer.work.weixin.qq.com/document/path/101181
      # 请求方式：POST(HTTPS)
      # 请求地址：https://qyapi.weixin.qq.com/cgi-bin/wedoc/smartsheet/get_field_groups?access_token=ACCESS_TOKEN
      # payload
      # docid     string  是 文档的docid
      # sheet_id  string  是 表格ID
      # offset    uint32  否 偏移量，初始值为 0
      # limit     uint32  否 分页大小 , 每页返回多少条数据
      def get_field_groups(payload)
        client.post(
          '/cgi-bin/wedoc/smartsheet/get_field_groups',
          params: { access_token: QywechatApi.access_token },
          json: payload
        )
      end
    end
  end
end
