# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Movie.create!([
  {
    title: "Iron Man",
    rating: "PG-13",
    total_gross: 318412101.00,
    description: "When wealthy industrialist Tony Stark is forced to build an armored suit after a life-threatening incident, he ultimately decides to use its technology to fight against evil.",
    released_on: "2008-05-02"
  },
  {
    title: "Superman",
    rating: "PG",
    total_gross: 134218018.00,
    description: "An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home's first and greatest super-hero.",
    released_on: "1978-12-15"
  },
  {
    title: "Spider-Man",
    rating: "PG-13",
    total_gross: 403706375.00,
    description: "When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.",
    released_on: "2002-05-03"
  },
  {
    title: "Catwoman",
    rating: "PG-13",
    total_gross: 40200000.00,
    description: "A shy woman, endowed with the speed, reflexes, and senses of a cat, walks a thin line between criminal and hero, even as a detective doggedly pursues her, fascinated by both of her personas.",
    released_on: "2004-07-23"
  },
  {
    title: "The Lone Ranger",
    rating: "PG-13",
    total_gross: 4020.00,
    description: "Native American warrior Tonto recounts the untold tales that transformed John Reid, a man of the law, into a legend of justice.",
    released_on: "2013-07-03"
  }
])

