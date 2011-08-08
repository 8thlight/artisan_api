require 'spec_helper'
require 'json'

describe 'Project' do
  it "intializes with an api call json chunk" do
    chunk = '[{"story":{"name":"T1","number":1,"optimistic":null,"pessimistic":null,"realistic":null}},{"story":{"name":"T2","number":2,"optimistic":null,"pessimistic":null,"realistic":null}},{"story":{"name":"T3","number":3,"optimistic":null,"pessimistic":null,"realistic":null}}]'

    project = Artisan::Project.new(JSON::parse(chunk))
    project.stories.size.should == 3
  end
end
