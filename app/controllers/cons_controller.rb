class ConsController < ApplicationController
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

  private

  def con_params
    params.require(:con).permit(:name, :weight, :issue_id)
  end

end
