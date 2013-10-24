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
    expect(page).to have_text(movie.cast)
    expect(page).to have_text(movie.director)
    expect(page).to have_text(movie.duration)
    expect(page).to have_selector("img[src$='#{movie.image_file_name}']")

  end

  it "shows the total gross if the total gross exceeds $50M" do
    movie = Movie.create(movie_attributes(total_gross: 60000000.00))
    visit movie_url(movie)
    expect(page).to have_text("$60,000,000.00")
  end

  it "shows the 'Flop!' if the total gross is less than $50M" do
    movie = Movie.create(movie_attributes(total_gross: 600.00))
    visit movie_url(movie)
    expect(page).to have_text("Flop!")
  end
end
