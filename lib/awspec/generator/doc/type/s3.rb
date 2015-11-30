module Awspec::Generator
  module Doc
    module Type
      class S3 < Base
        def initialize
          super
          @type = Awspec::Type::S3.new('my-bucket')
          @ret = @type.resource
          @matchers = []
          @ignore_matchers = []
          @describes = %w(bucket_acl_owner)
        end
      end
    end
  end
end
