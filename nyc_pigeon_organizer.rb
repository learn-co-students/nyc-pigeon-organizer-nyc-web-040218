def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |lvl1_key, lvl2_data|
    lvl2_data.each do |lvl2_key, lvl2_data|
      lvl2_data.each do |name|
        new_hash[name] = {}
      end
    end
  end

  data.each do |lvl1_key, lvl2_data|
    lvl2_data.each do |lvl2_key, lvl2_data|
      lvl2_data.each do |name|
        new_hash.each do |bird_key, data|
          if bird_key == name
            new_hash[name][lvl1_key] = []
          end
        end
      end
    end
  end

  data.each do |lvl1_key, lvl2_data|
    lvl2_data.each do |lvl2_key, lvl2_data|
      lvl2_data.each do |name|
        new_hash.each do |bird_key, data|
          if bird_key == name
            new_hash[name][lvl1_key] << lvl2_key.to_s
          end
        end
      end
    end
  end

  puts new_hash
  return new_hash
end
