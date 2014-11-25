require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        
        :name => "Name",
        :cost => 9.99,
        :deliver => '12/10/2014',
        :user_id => 1,
        :created_at => '12/10/2014'
      ),
      stub_model(Project,
        
        :name => "Name",
        :cost => 9.99,
        :deliver => '12/10/2014',
        :user_id => 1,
        :created_at => '12/10/2014'
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => '12/10/2014'.to_s, :count => 2
    #assert_select "tr>td", :text => number_to_currency(9.99).to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    #assert_select "tr>td", :text => "12/10/2014".to_s, :count => 2
    
  end
end
