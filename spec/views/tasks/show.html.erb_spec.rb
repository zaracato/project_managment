require 'spec_helper'

describe "tasks/show" do
  before(:each) do
    @project = build_stubbed(:project)
    @user = build_stubbed(:user)
    @task = build_stubbed(:task)
    @status = build_stubbed(:status)
    @task.project = @project
    @task.user = @user
    @task.status = @status
    #post :create, session: { email: user.email, password: 'invalid' }

    # @task = assign(:task, stub_model(Task,
    #   :name => "Name",
    #   :description => "MyText",
    #   :estimated_time => 3,
    #   :real_time => 4,
    #   :status_id => 5,
    #   project: @project,
    #   user: @user
    # ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    
    
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/task/)
    rendered.should match(/status/)
    
  end
end
