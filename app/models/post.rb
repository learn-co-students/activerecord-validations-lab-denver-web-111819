class Post < ActiveRecord::Base

    include ActiveModel::Validations
    
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    # validate :clickbait
    validates_with PostValidator





    # def clickbait
    #     if ([title] =~ ["Won't Believe", "Secret", "Guess", "Top"])
    #         errors.add(:clickbait, "not clickbaity enough")
    #     end
    # end
end
