require 'spec_helper'

describe 'Project' do

  it "intializes with a hash" do
    hash = {
      'description' => 'This is a project.',
      'name'        => 'A'
    }

    @project = Artisan::Project.new(hash)
    @project.name.should == "A"
    @project.description.should == "This is a project."
  end

end
