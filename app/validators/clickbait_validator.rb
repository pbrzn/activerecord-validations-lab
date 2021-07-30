class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    if record.title.present? && !record.title.include?("Won't Believe" || "Secret" || "Top" || "Guess")
      record.errors[:title] << "Title not sufficiently clickbaity"
    end
  end
end
