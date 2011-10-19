require 'spec_helper'

describe "users/edit.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "MyString",
      :password => "MyString",
      :name => "MyString",
      :last_name => "MyString",
      :status => 1,
      :token => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_password", :name => "user[password]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_status", :name => "user[status]"
      assert_select "input#user_token", :name => "user[token]"
    end
  end
end
