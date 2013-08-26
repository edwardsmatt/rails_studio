require "spec_helper"

describe "Viewing the list of movies" do
  it "shows the movies" do
    visit movies_url

    expect(page).to have_text('3 Movies')
    ['Movie 1', 'Movie 2', 'Movie 3'].each { |movie|  expect(page).to have_text(movie)}
  end

end
