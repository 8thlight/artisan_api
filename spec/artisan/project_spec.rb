require 'spec_helper'

describe 'Project' do

  it "intializes with a hash" do
    hash = {
      'id'          => 1,
      'description' => 'This is a project.',
      'name'        => 'A'
    }

    @project = Artisan::Project.new(hash)
    @project.name.should == "A"
    @project.description.should == "This is a project."
    @project.id.should == 1
  end

end
