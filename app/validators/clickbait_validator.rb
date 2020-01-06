class ClickbaitValidator < ActiveModel::Validator

    def validate(record)
        unless record.title =~ /(Won't Believe|Secret|Top \d|Guess)/
        record.errors[:title] << "invalid title"
        end
    end
end



# def validate_each(record, attribute, value)
#     unless value =~ /(Won't Believe|Secret|Top \d|Guess)/
#         record.errors[attribute] << ("not clickbait")
#     end
# end