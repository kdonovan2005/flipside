class ProsController < ApplicationController

  def new
    @pro = Pro.new
  end

  def create
    binding.pry
    @pro = Pro.create(pro_params)
    redirect_to issue_path(@pro.issue_id)
  end

  private

  def pro_params
    params.require(:pro).permit(:name, :weight, :issue_id)
  end

end
