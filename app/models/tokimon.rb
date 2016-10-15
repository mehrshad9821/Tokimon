class Tokimon < ActiveRecord::Base
  attr_accessible :electric, :fight, :fire, :fly, :frozen_or_ice, :height, :name, :total, :trainer_id, :water, :weight
  belongs_to :trainer
  before_create :check_name_existence
  after_save :update_level
  validates_presence_of :name, :message => "of tokimon is required"
  validates_presence_of :weight, :message => "of tokimon is required"
  validates_presence_of :height, :message => "of tokimon is required"

  def update_level
    c = trainer.tokimons.size
    if c > 3
      trainer.level = c/3
    else
      trainer.level = 1
    end
    trainer.save!
  end

  def check_name_existence
    tokimons = Tokimon.where(:name => self.name)
    if !tokimons.blank?
      errors.add(:base, "Tokimon with same name already exists")
      return false
    end
    return true
  end
end
