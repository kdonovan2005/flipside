class Con < ActiveRecord::Base
  belongs_to :issue
  validates :weight, presence: true
  validates :name, presence: true
end
