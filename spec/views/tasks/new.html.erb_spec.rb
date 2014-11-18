require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :project_id => 1,
      :user_id => 1,
      :name => "MyString",
      :description => "MyText",
      :estimated_time => 1,
      :real_time => 1,
      :status_id => 1
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_path, "post" do
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
