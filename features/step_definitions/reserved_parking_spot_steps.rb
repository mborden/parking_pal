Given(/^The parking spot is reserved$/) do
	@spots = Parkingspot.where(status: 'reserved')
end

Given(/^I am not the user currently holding the spot$/) do
	@user = User.create!(name: 'fake_user', LPN: '123 xyz', email: 'email123@email.com', password: 'password')
end

When(/^I view the options for that spot$/) do
	@spots.each do |spot|
		@spot = Parkingspot.find(spot.id)
	end
	visit parkingspot_path(@spot.id)
end

Then(/^I should not be able to take the spot$/) do
	expect(page).not_to have_content('Take Spot')
end


