class ProsController < ApplicationController

  def new
    @pro = Pro.new
  end

  def create
    @pro = Pro.create
    redirect_to issues_path
  end

end
