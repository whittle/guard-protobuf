module Guard
  class Protobuf
    module Compiler
      class Ruby < Struct.new(:proto_dir, :output_dir)
        def initialize(options = {})
          self.proto_dir = options[:proto_dir]
          self.output_dir = options[:output_dir]
        end

        def compile(file)
          system command(file)
        end

        def command(file)
          "rprotoc".tap do |command|
            command << " -p #{proto_dir}"  if proto_dir
            command << " -o #{output_dir}"  if output_dir
            command << " #{file}"
          end
        end
      end
    end
  end
end
