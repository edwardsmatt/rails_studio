require "spec_helper"

describe "A Movie" do
  it "will be a 'flop' if it's total gross is below $50M" do
    movie = Movie.new(movie_attributes(total_gross: 100000))
    expect(movie.flop?).to be_true
  end

  it "will not be a 'flop' if it's total gross is below $50M" do
    movie = Movie.new(movie_attributes(total_gross: 100000000000))
    expect(movie.flop?).to be_false
  end

  it "is released when the released on date is in the past" do
    movie = Movie.create(movie_attributes(released_on: 3.months.ago))

    expect(Movie.released).to include(movie)
  end

  it "is not released when the released on date is in the future" do
    movie = Movie.create(movie_attributes(released_on: 3.months.from_now))

    expect(Movie.released).not_to include(movie)
  end

  it "returns released movies ordered with the most recently-released movie first" do
    movie1 = Movie.create(movie_attributes(released_on: 3.months.ago))
    movie2 = Movie.create(movie_attributes(released_on: 2.months.ago))
    movie3 = Movie.create(movie_attributes(released_on: 1.months.ago))

    expect(Movie.released).to eq([movie3, movie2, movie1])
  end

  it "returns only hit movies" do
    movie1 = Movie.create(movie_attributes(total_gross: 300000001))
    movie2 = Movie.create(movie_attributes(total_gross: 300000000))
    movie3 = Movie.create(movie_attributes(total_gross: 50000000))

    expect(Movie.hits).to eq([movie1, movie2])
  end

  it "returns only flop movies" do
    movie1 = Movie.create(movie_attributes(total_gross: 50000001))
    movie2 = Movie.create(movie_attributes(total_gross: 50000000))
    movie3 = Movie.create(movie_attributes(total_gross: 49999999))
    movie4 = Movie.create(movie_attributes(total_gross: 49999998))

    expect(Movie.flops).to eq([movie4, movie3])
  end
end
