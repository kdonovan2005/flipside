class Issue < ActiveRecord::Base
  belongs_to :user
  has_many :pros
  has_many :cons
  validates :name, presence: true

  def self.open_issues
    open_issues = Issue.where("open = ?", true)
  end

  def self.public_issues
    public_issues = Issue.where("private = ?", false)
  end

end
