# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @collection = Contents::Recipe.all.execute
  end

  def show
    @recipe = Contents::Recipe.find(params[:id])
  end
end
