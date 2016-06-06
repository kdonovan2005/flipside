class Issue < ActiveRecord::Base
  
  def self.open_issues
    open_issues = Issue.where("open = ?", true)
  end

  def self.public_issues
    public_issues = Issue.where("private = ?", false)
  end

end
