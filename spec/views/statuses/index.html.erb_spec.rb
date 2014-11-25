require 'spec_helper'

describe "statuses/index" do
  before(:each) do
    assign(:statuses, [
      stub_model(Status,
        :name => "Name",
        :color => "Color",
        :created_at => '12/10/2014'
      ),
      stub_model(Status,
        :name => "Name",
        :color => "Color",
        :created_at => '12/10/2014'
      )
    ])
  end

  it "renders a list of statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
