class Character

  attr_reader :name, 
              :id,
              :photo_url,
              :allies,
              :enemies,
              :affiliation

  def initialize(attributes)
    @id = attributes[:_id]
    @name = attributes[:name]
    @photo_url = attributes[:photoUrl]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
  end
  
end