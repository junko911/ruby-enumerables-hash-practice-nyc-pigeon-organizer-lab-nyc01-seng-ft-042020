require 'pp'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  index = 0
  while index < data.length do
    category = data.keys[index]
    
    data[category].each do |key, value|
      pp key
      # outer_index = 0
      # pp key.length
    
      inner_index = 0
      counter = 0
      while inner_index < value.length do
        counter += 1 
        # items = []
        # pp data[category][key].include? (value[inner_index])
          # items << key
        # end
        
        if pigeon_list[value[inner_index]].nil?
          pigeon_list[value[inner_index]] = { category => [key.to_s] }
        # else if pigeon_list[value[inner_index]][category].include?(key.to_s) == false
          pigeon_list[value[inner_index]][category] << { category => [key.to_s] }
        end
        
        inner_index += 1
      end
      pp counter
    end
    # data[category].each do |key, value|
    #   items = []
    #   if value.has_value?(value)
    #     items << key
    #   end
    # end
    
    index += 1
  end

  pp pigeon_list
end

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }

pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }
      
nyc_pigeon_organizer(pigeon_data)
