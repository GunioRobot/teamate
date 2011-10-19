require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :email => "Email",
        :password => "Password",
        :name => "Name",
        :last_name => "Last Name",
        :status => 1,
        :token => "Token"
      ),
      stub_model(User,
        :email => "Email",
        :password => "Password",
        :name => "Name",
        :last_name => "Last Name",
        :status => 1,
        :token => "Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end
