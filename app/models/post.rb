class Post < ActiveRecord::Base
  include ActiveModel::Validations

  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category." }
  validates_with ClickbaitValidator
  # validate :clickbait
  #
  # def clickbait
  #   if title.present? && !title.include?("Won't Believe" || "Secret" || "Top" || "Guess")
  #     errors.add(:clickbait, "not clickbaity enough.")
  #   end
  # end

end
