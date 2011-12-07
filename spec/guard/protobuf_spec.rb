require 'spec_helper'

describe Guard::Protobuf do
  describe '#run_all' do
    its(:run_all) { should_not be_nil }
  end
end
