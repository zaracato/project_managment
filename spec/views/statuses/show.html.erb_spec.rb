require 'spec_helper'

describe "statuses/show" do
  before(:each) do
    @status = assign(:status, stub_model(Status,
      :name => "Name",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Color/)
  end
end
