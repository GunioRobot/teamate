require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :email => "MyString",
      :password => "MyString",
      :name => "MyString",
      :last_name => "MyString",
      :status => 1,
      :token => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_password", :name => "user[password]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_status", :name => "user[status]"
      assert_select "input#user_token", :name => "user[token]"
    end
  end
end
