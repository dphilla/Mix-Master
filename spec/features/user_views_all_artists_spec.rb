require 'rails_helper'

RSpec.feature "User visits artists index" do
      before :each do
        @artist_1 = Artist.create(name: "Bob Marley",
                                  image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
        @artist_2 = Artist.create(name: "Damien Marley",
                                  image_path: "https://en.wikipedia.org/wiki/Damian_Marley#/media/File:Damian_Marley_2011.jpg")
        end

scenario "they see all artist" do

    visit '/artists'

    expect(page).to have_content @artist_1.name
    expect(page).to have_selector(:link_or_button, "Bob Marley")
    expect(page).to have_selector(:link_or_button, "Damien Marley")
  end
end
