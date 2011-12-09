require 'spec_helper'

module Guard
  describe Protobuf::Compiler do
    let(:options) { {:language => :Ruby, :output_dir => 'lib'} }

    context 'when compiling to Ruby' do
      subject { described_class.with(options.merge(:language => :Ruby)) }
      it { should be_a(::Guard::Protobuf::Compiler::Ruby) }
    end

    context 'when compiling into lib/foo' do
      subject { described_class.with(options.merge(:output_dir => 'lib/foo')) }
      its(:output_dir) { should == 'lib/foo' }
    end
  end
end
