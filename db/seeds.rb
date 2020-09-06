require "csv"

CSV.foreach(Rails.root.join("movies.csv"), {:headers => true}) do |csv|

  title, description, year, director, actor, filming_locations, filming_country = csv[0], csv[1], csv[2], csv[3],
      csv[4], csv[5], csv[6]

  movie = Movie.find_by_title title
  if movie.blank?
    Movie.create(title: title, description: description, year: year, director: director, filming_country: filming_country,
                 filming_locations: filming_locations)
  else
    actor_obj = Actor.find_or_create_by(name: actor)
    movie.actors << actor_obj
    movie.save!
  end

end

CSV.foreach(Rails.root.join("reviews.csv"), {:headers => true}) do |csv|

  movie_title, user, stars, review = csv[0], csv[1], csv[2], csv[3]

  movie = Movie.find_by_title movie_title
  if movie.present?
    review = Review.create(movie_title: movie_title, user: user, stars: stars, review: review)
    movie.reviews << review
    movie.save!
  end

end

#Movie.bulk_insert do |worker|
#movie_attrs.each do |attrs|
#  worker.add(attrs)
#end

