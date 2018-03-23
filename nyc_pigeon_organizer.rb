require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  category_count = 0
  data.each do |key, value|
    trait_count = 0
    value.each do |key2, value2|
      name_count = 0
      value2.each do |cat_name|
        if category_count == 0
          if name_count == 0 && trait_count == 0
            pigeon_list = {cat_name => {key=> []}}
            pigeon_list[cat_name][key] << key2.to_s
          elsif name_count > 0 && trait_count == 0
            pigeon_list[cat_name] = {key => [key2.to_s]}
          elsif name_count >= 0 && trait_count > 0 && pigeon_list[cat_name] == nil
            pigeon_list[cat_name] = {key => []}
            pigeon_list[cat_name][key] << key2.to_s
          else
            pigeon_list[cat_name][key] << key2.to_s
          end
        else
          pigeon_list[cat_name][key] = []
          pigeon_list[cat_name][key] << key2.to_s
        end
        name_count += 1
      end
      trait_count += 1
    end
    category_count += 1
  end
  pigeon_list
end
