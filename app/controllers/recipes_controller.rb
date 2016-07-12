class RecipesController < ApplicationController
  def index
    @search = params[:search] || 'mocha'
    @recipes = Recipe.for(@search)
    ##@fields = %w{publisher f2f_url title source_url recipe_id image_url social_rank publisher_url}
    @fields = %w{image_url title f2f_url}
  end
end
