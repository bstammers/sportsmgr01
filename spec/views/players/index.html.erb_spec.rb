require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :username => "Username",
        :email => "Email",
        :password_digest => "Password Digest",
        :phone => "Phone",
        :avatar => "Avatar",
        :adminflag => false,
        :mgrflag => false
      ),
      stub_model(Player,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :username => "Username",
        :email => "Email",
        :password_digest => "Password Digest",
        :phone => "Phone",
        :avatar => "Avatar",
        :adminflag => false,
        :mgrflag => false
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
