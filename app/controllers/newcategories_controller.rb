class NewCategoriesController < ApplicationController# frozen_string_literal: true
  def index
    @categories = Category.all
  end
end