require 'directors_database'
require 'pp'




def gross_for_director(director_data)
  
  total_for_director = 0
  movie_list_length = director_data[:movies].count
  index = 0 
  while index < movie_list_length do
    total_for_director += director_data[:movies][index][:worldwide_gross]
    index += 1 
  end
  
  total_for_director
  
end
