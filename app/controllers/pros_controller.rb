class ProsController < ApplicationController

  def new
    @pro = Pro.new
  end

  def create
    binding.pry
    @pro = Pro.create(pro_params)
    redirect_to issues_path
  end

  private

  def pro_params
    params.require(:pro).permit(:name, :weight, :issue_id)
  end

end
