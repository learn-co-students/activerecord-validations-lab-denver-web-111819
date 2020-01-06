class PostValidator < ActiveModel::Validator
  
  def validate(record)
    unless record.title =~ /(Won't Believe|Secret|Guess|Top \d)/
        record.errors[:title]<< "moar clickbait pl0x"
    end
  end


end