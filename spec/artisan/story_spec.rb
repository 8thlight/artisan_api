require 'spec_helper'

describe Story do

  it "initializes with an api call json chunk" do
    chunk = {'name' => "Test", 'number' => 1, 'optimistic' => nil, 'realistic' => nil, 'pessimistic' => nil}
    story = Story.new(chunk)
    story.name.should == "Test"
    story.optimistic.should be_nil
  end
end
