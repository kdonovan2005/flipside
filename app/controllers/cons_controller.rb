class ConsController < ApplicationController
  before_filter :authorize

  def new
    @con = Con.new
  end

  def create
    @con = Con.create(con_params)
    redirect_to issue_path(@con.issue_id)
  end

  private

  def con_params
    params.require(:con).permit(:name, :weight, :issue_id)
  end

end
