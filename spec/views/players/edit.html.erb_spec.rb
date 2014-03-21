require 'spec_helper'

describe "players/edit" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :firstname => "MyString",
      :lastname => "MyString",
      :username => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :phone => "MyString",
      :avatar => "MyString",
      :adminflag => false,
      :mgrflag => false
    ))
  end

  it "renders the edit player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", player_path(@player), "post" do
      assert_select "input#player_firstname[name=?]", "player[firstname]"
      assert_select "input#player_lastname[name=?]", "player[lastname]"
      assert_select "input#player_username[name=?]", "player[username]"
      assert_select "input#player_email[name=?]", "player[email]"
      assert_select "input#player_password_digest[name=?]", "player[password_digest]"
      assert_select "input#player_phone[name=?]", "player[phone]"
      assert_select "input#player_avatar[name=?]", "player[avatar]"
      assert_select "input#player_adminflag[name=?]", "player[adminflag]"
      assert_select "input#player_mgrflag[name=?]", "player[mgrflag]"
    end
  end
end
