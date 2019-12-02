require 'directors_database'
require 'pp'

def directors_totals(nds)
    
  result = {}
  
  row_index = 0 
  while row_index < nds.count do
    
    name = nds[row_index][:name]
    movie_totals = 0
    movie_totals += gross_for_director(nds[row_index])
    result[name] = movie_totals
    row_index += 1
    
  end
  
 pp result
end


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
