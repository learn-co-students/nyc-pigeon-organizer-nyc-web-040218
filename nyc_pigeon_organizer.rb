def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data[:gender].each do |gender, list_of_names|
    list_of_names.each do |name|
      if pigeon_list[name] == nil
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  data.each do |personal_info, personal_info_hash|
    personal_info_hash.each do |random_info, list_of_names|
      list_of_names.each do |name|
        pigeon_list[name][personal_info].push(random_info.to_s)
      end
    end
  end

  pigeon_list
end
