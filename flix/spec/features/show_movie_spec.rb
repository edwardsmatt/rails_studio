require "spec_helper"

describe "Viewing an individual movie " do
  it "shows the movie" do

    movie1 = Movie.create(movie_attributes)

    visit movie_url(movie1)

    expect(page).to have_text(movie1.title)
    expect(page).to have_text(movie1.rating)
    expect(page).to have_text(movie1.description[0..10])
    expect(page).to have_text(movie1.released_on)
    expect(page).to have_text("$318,412,101.00")

  end
end
