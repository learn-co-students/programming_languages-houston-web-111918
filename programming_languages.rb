def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |type, hash|
    hash.each do |name, type_hash|
      type_hash.each do |key, value|
        if !new_hash[name]
          new_hash[name] = {key => value, :style => [type]}
        else
          new_hash[name][:style] << type
        end
      end
    end
  end
  new_hash
end
