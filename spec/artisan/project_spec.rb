require 'spec_helper'
require 'json'

describe 'Project' do
  it "intializes with an api call json chunk" do
    chunk = {'description' => 'This is a project.', 'name' => 'A'}

    @project = Artisan::Project.new(chunk)
    @project.name.should == "A"
    @project.description.should == "This is a project."
  end

end
