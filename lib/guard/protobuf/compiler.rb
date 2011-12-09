module Guard
  class Protobuf
    module Compiler
      autoload :Ruby, 'guard/protobuf/compiler/ruby'

      def self.with(options)
        const_get(options.delete(:language)).new options
      end
    end
  end
end
