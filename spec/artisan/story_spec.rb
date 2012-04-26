require 'spec_helper'

describe Artisan::Story do

  it "initializes with a hash" do
    hash = {
      'name'        => 'Test',
      'number'      => 1,
      'optimistic'  => nil,
      'realistic'   => nil,
      'pessimistic' => nil
    }
    story = Artisan::Story.new(hash)
    story.name.should == "Test"
    story.optimistic.should be_nil
  end

end
