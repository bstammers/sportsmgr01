require 'spec_helper'

describe "Players" do

	subject {page}

	describe "sign in" do
		before {visit signin_path}

		describe "with invalid information" do
			before {click_button "Sign in"}
			it {should have_title('Sign in')}
			it {should have_selector('div.alert.alert-error')}
		end
		describe "with valid information" do
			let(:player) {FactoryGirl.create(:player)}
			before do
				fill_in "Username", with: player.username
				fill_in "Password", with: player.password
				click_button "Sign in"
			end
			it {should have_content(player.username)}
			it {should have_title("Welcome " + player.firstname)}
		end
	end

#	describe "player dashboard" do
#		let(:player) {FactoryGirl.create(:player)}
#		before {visit player_path(player)}
#
#		it {should have_content(player.username)}
#		it {should have_title(player.firstname + " " + player.lastname)}
#	end

	describe "registration page" do
		before {visit register_path}
		let(:submit) {"Create account"}

		it {should have_content('Register')}
		it "should not create an invalid user" do
			expect{click_button submit}.not_to change(Player, :count)
		end
		describe "valid user details" do
			let(:player) {FactoryGirl.build(:player)}
			before do
				fill_in "First Name", with: player.firstname
				fill_in "Last Name" ,with: player.lastname
				fill_in "Username", with: player.username
				fill_in "Password", with: player.password
				fill_in "Confirmation", with: player.password_confirmation
				fill_in "Phone", with: player.phone
				fill_in "Avatar", with: player.avatar
				#fill_in 'player_mgrflag', with: player.mgrflag
				#fill_in 'player_adminflag', with: player.adminflag
			end
			it "should create a user" do
				expect {click_button submit}.to change(Player, :count).by(1)
			end
		end
	end
end	



