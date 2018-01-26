class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
      # Set values to these defaults only if the values are nil
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
