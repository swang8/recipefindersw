require 'httparty'
class Recipe
  include HTTParty
  base_uri ENV['FOOD2FORK_SERVER_AND_PORT']
  default_params key:ENV['FOOD2FORK_KEY']
  format :json

  def self.for(term)
    get(base_uri + "/search", query:{q:term})['recipes']
  end

end
