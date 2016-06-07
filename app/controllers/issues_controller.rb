class IssuesController < ApplicationController
  before_action :select_issue, only: [:show, :edit, :update, :destroy]
  before_filter :authorize

  def index
    @issues = Issue.open_issues && Issue.public_issues
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.user_id = current_user.id
    @issue.save
    redirect_to issue_path(@issue)
  end

  def update
    @issue.update(issue_params)
    @issue.save
    redirect_to issue_path(@issue)
  end

  def show
    @pro = Pro.new
    @con = Con.new
  end

  def destroy
    @issue.destroy
    redirect_to issues_path
  end

  private

  def issue_params
    params.require(:issue).permit(:name, :open, :private)
  end

  def select_issue
    @issue = Issue.find(params[:id])
  end

end
