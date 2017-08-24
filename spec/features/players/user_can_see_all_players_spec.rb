require 'rails_helper'

feature "user can view all players" do
  scenario "user views players index" do

    visit "/"

    click_on "View Players"

    expect(current_path).to eq(players_path)
    expect(page).to have_link("Kevin Durant")
    expect(page).to have_link("LeBron James")
    expect(page).to have_link("Kawhi Leonard")
  end
end
