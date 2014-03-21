require 'spec_helper'

describe "players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :firstname => "MyString",
      :lastname => "MyString",
      :username => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :phone => "MyString",
      :avatar => "MyString",
      :adminflag => false,
      :mgrflag => false
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", players_path, "post" do
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
