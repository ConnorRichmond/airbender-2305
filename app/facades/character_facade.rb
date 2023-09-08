class CharacterFacade

  def self.find_characters(nation)
    service = AvatarService.new
    raw_characters = service.characters

    raw_characters.map do |raw_character|
      Character.new(title: raw_movie[:title], 
                overview: raw_movie[:overview], 
                vote_average: raw_movie[:vote_average], 
                id: raw_movie[:id])
    end
    
  end

end