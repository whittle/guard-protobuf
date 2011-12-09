require 'spec_helper'

module Guard::Protobuf::Compiler
  describe Ruby do
    context 'with an output dir of lib/foo' do
      subject { described_class.new :output_dir => 'lib/foo' }
      its(:output_dir) { should == 'lib/foo' }
      its(:command) { should include('-o lib/foo') }
    end

    context 'with a proto dir of lib/proto' do
      subject { described_class.new :proto_dir => 'lib/proto' }
      its(:proto_dir) { should == 'lib/proto' }
      its(:command) { should include('-p lib/proto') }
    end
  end
end
