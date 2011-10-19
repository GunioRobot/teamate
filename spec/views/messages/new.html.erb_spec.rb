require 'spec_helper'

describe "messages/new.html.erb" do
  before(:each) do
    assign(:message, stub_model(Message,
      :user_id => 1,
      :title => "MyString",
      :text => "MyText",
      :thread => 1,
      :parent_id => 1
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path, :method => "post" do
      assert_select "input#message_user_id", :name => "message[user_id]"
      assert_select "input#message_title", :name => "message[title]"
      assert_select "textarea#message_text", :name => "message[text]"
      assert_select "input#message_thread", :name => "message[thread]"
      assert_select "input#message_parent_id", :name => "message[parent_id]"
    end
  end
end
