require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :project_id => 1,
        :user_id => 2,
        :name => "Name",
        :description => "MyText",
        :estimated_time => 3,
        :real_time => 4,
        :status_id => 5
      ),
      stub_model(Task,
        :project_id => 1,
        :user_id => 2,
        :name => "Name",
        :description => "MyText",
        :estimated_time => 3,
        :real_time => 4,
        :status_id => 5
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
