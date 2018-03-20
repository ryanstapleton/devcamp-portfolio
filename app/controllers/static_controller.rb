class StaticController < ApplicationController
  layout :resolve_layout
  
  def tesla
  end

  def google
  end

  def template
  end

  def pinterest
  end

  private

  def resolve_layout
    case action_name
    when "tesla"
      "tesla"
    when "google"
      "google"
    when "template"
      "template"
    when "pinterest"
      "pinterest"
    end
  end 
end
