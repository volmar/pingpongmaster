class Valid < ActiveModel::Validator
  def validate(record)
    if (record.score1 - record.score2) > -2 && (record.score1 - record.score2) < 2
        record.errors[:score] = "There game needs to end by 2 points at least."
    elsif (record.score1 < 21) || (record.score2 < 21) 
        record.errors[:score] = "There game didn't finished yet"
    end
  end
end
