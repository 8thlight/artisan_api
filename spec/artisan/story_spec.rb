require 'spec_helper'

describe Artisan::Story do

  it "initializes with a hash" do
    hash = {
      'name'          => 'Test',
      'number'        => 1,
      'weighted_mean' => nil,
      'acceptance_criteria' => 'Complete this story',
      'nonbillable' => false,
      'complete' => true,
      'tag_list' => 'tag1 tag2'
    }

    story = Artisan::Story.new(hash)
    story.name.should == "Test"
    story.optimistic.should be_nil
    story.weighted_mean.should be_nil
    story.acceptance_criteria.should == "Complete this story"
    story.nonbillable.should be_false
    story.tag_list.should == "tag1 tag2"
    story.tags.should == ["tag1", "tag2"]
  end

end
