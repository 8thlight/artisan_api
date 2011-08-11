require 'spec_helper'
require 'json'

describe 'Project' do
  it "intializes with an api call json chunk" do
    chunk = '{"project":{"description":"This is a project.", "name":"A"}}'

    @project = Artisan::Project.new(JSON.parse(chunk))
    @project.name.should == "A"
    @project.description.should == "This is a project."
  end

end
