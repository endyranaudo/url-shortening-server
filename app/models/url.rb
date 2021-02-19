class Url < ApplicationRecord
  validates :original, presence: true

  def self.shorten
    random = (0...6).map { (65 + rand(26)).chr }.join.downcase
    "#{random}"
  end

end
