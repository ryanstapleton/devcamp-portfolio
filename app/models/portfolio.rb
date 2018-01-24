class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Custom scope the method way
  def self.angular
    where(subtitle: "Angular")
  end

  # Another way to do scope
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }
end
