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
end
