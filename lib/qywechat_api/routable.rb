# frozen_string_literal: true

module QywechatApi
  module Routable
    extend ActiveSupport::Concern

    def self.included(base)
      base.class_eval do
        def self.resources(name)
          class_eval <<-CODE, __FILE__, __LINE__ + 1
            def #{name}
              @#{name} ||= Struct.new(:client) do
                include ::QywechatApi::Api::#{name.to_s.classify}
              end.new(client)
            end
          CODE
        end
      end
    end
  end
end
