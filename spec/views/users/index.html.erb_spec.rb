require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :login => "Login",
        :email => "Email"
      ),
      stub_model(User,
        :name => "Name",
        :login => "Login",
        :email => "Email"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select("tr>td", :text => "Name".to_s, :count => 2)
    assert_select("tr>td", :text => "Login".to_s, :count => 2)
    assert_select("tr>td", :text => "Email".to_s, :count => 2)
  end
end
