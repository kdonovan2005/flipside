class IssuesController < ApplicationController
  before_action :select_issue, only: [:show, :edit, :update, :destroy]

  def index
    @issues = Issue.open_issues && Issue.public_issues
  end

end
