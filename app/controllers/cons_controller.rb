class ConsController < ApplicationController
  before_action :select_con, only: [:destroy]
  before_filter :authorize

  def new
    @con = Con.new
  end

  def create
    @con = Con.create(con_params)
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @con.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def con_params
    params.require(:con).permit(:name, :weight, :issue_id)
  end

  def select_con
    @con = Con.find(params[:id])
  end

end
