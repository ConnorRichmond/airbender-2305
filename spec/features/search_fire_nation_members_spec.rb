require 'rails_helper'

RSpec.describe "Search Fire Nation Members", type: :feature do
  before do
    Character.create!(
      name: "Character 1",
      allies: "Ally 1, Ally 2",
      enemies: "Enemy 1, Enemy 2",
      affiliations: "Affiliation 1, Affiliation 2",
      photo_url: "https://example.com/photo1.jpg",
      nation: "Fire Nation"
    )
  end
  describe "User searches for Fire Nation members" do

    visit root_path
    select "Fire Nation", from: "Select Field"

    click_button "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("Total number of Fire Nation members: approximately 100")

    within(".members-list") do
      expect(page).to have_selector(".member", count: 25)

      within(first(".member")) do
        expect(page).to have_content("Name:")
        expect(page).to have_content("Allies:")
        expect(page).to have_content("Enemies:")
        expect(page).to have_content("Affiliations:")
      end
    end
  end
end