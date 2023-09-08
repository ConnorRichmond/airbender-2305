class SearchController < ApplicationController

  def index
    nation = params[:nation]
    characters = CharacterFacade.find_characters(nation)
    total_characters = characters.length
    flash[:notice] = "Total number of people who live in the Fire Nation: #{total_characters}"
    @characters = characters.first(25)
  end

end