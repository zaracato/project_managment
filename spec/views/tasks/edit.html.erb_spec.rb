require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :project_id => 1,
      :user_id => 1,
      :name => "MyString",
      :description => "MyText",
      :estimated_time => 1,
      :real_time => 1,
      :status_id => 1
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_path(@task), "post" do
      assert_select "input#task_project_id[name=?]", "task[project_id]"
      assert_select "input#task_user_id[name=?]", "task[user_id]"
      assert_select "input#task_name[name=?]", "task[name]"
      assert_select "textarea#task_description[name=?]", "task[description]"
      assert_select "input#task_estimated_time[name=?]", "task[estimated_time]"
      assert_select "input#task_real_time[name=?]", "task[real_time]"
      assert_select "input#task_status_id[name=?]", "task[status_id]"
    end
  end
end
