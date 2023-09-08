class SearchController < ApplicationController

  def index
    nation = params[:nation]
    characters = CharacterFacade.find_characters(nation)
    @total_characters = characters.length
    @characters = characters.first(25)
  end

end