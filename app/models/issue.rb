class Issue < ActiveRecord::Base
  belongs_to :user
  delegate :name, to: :user, prefix: true
  has_many :pros
  has_many :cons
  validates :name, presence: true

  def self.open_issues
    open_issues = Issue.where("open = ?", true)
  end

  def self.public_issues
    public_issues = Issue.where("private = ?", false)
  end

  def average_pros
    @weight = []
    self.pros.each do |pro|
      @weight << pro.weight
    end
    sum
  end

  def average_cons
    @weight = []
    self.cons.each do |con|
      @weight << con.weight
    end
    sum
  end

  def sum
    if @weight.size > 0
      @weight.inject(0.0) {|sum, el| sum + el}
    else
      0
    end
  end

end
