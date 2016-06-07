class ProsController < ApplicationController
  before_action :select_pro, only: [:destroy]
  before_filter :authorize

  def new
    @pro = Pro.new
  end

  def create
    @pro = Pro.create(pro_params)
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @pro.destroy
  end

  private

  def pro_params
    params.require(:pro).permit(:name, :weight, :issue_id)
  end

  def select_pro
    @pro = Pro.find(params[:id])
  end

end
