require 'spec_helper'

describe "steps/edit" do
  before(:each) do
    @step = assign(:step, stub_model(Step,
      :description => "MyString",
      :task_id => 1
    ))
  end

  it "renders the edit step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", step_path(@step), "post" do
      assert_select "input#step_description[name=?]", "step[description]"
      assert_select "input#step_task_id[name=?]", "step[task_id]"
    end
  end
end
