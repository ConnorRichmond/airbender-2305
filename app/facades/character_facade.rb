class CharacterFacade

  def self.find_characters(nation)
    service = AvatarService.new
    raw_characters = service.characters(nation)

    raw_characters.map do |raw_character|
      Character.new(name: raw_character[:name], 
                    allies: raw_character[:allies], 
                    enemies: raw_character[:enemies], 
                    affiliation: raw_character[:affiliation], 
                    photo_url: raw_character[:photoUrl], 
                    id: raw_character[:_id])
    end
    
  end

end