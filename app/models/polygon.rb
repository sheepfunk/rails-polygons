class Polygon < ActiveRecord::Base
  belongs_to :user
  has_many :categories, :dependent => :destroy
end
