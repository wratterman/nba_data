require 'rails_helper'

feature "user can view all teams" do
  scenario "user views teams index" do

    visit "/"

    click_on "View Teams"

    expect(current_path).to eq(teams_path)
    expect(page).to have_link("Atlanta Hawks")
    expect(page).to have_link("Denver Nuggets")
    expect(page).to have_link("Minnesota Timerwolves")
  end
end
