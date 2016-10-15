class Trainer < ActiveRecord::Base
  attr_accessible :email, :level, :name
  has_many :tokimons, dependent: :destroy
  before_save :update_level

  def update_level
    c = tokimons.size
    if c > 3
      self.level = c/3
    else
      self.level = 1
    end
  end

end
