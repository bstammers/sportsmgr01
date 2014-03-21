require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :username => "Username",
      :email => "Email",
      :password_digest => "Password Digest",
      :phone => "Phone",
      :avatar => "Avatar",
      :adminflag => false,
      :mgrflag => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Username/)
    rendered.should match(/Email/)
    rendered.should match(/Password Digest/)
    rendered.should match(/Phone/)
    rendered.should match(/Avatar/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
