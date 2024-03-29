require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :login => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    rendered.should have_selector("form", :action => user_path(@user), :method => "post") do |form|
      form.should have_selector("input#user_name", :name => "user[name]")
      form.should have_selector("input#user_login", :name => "user[login]")
      form.should have_selector("input#user_email", :name => "user[email]")
    end
  end
end
