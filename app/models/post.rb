class Post < ActiveRecord::Base

    validates :title, presence: true, uniqueness: true
    # validate :title, if: :clickbait
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

    # def clickbait 
    #     title.include?("Won't Believe", "Secret", "Top 5", "Guess")
    # end 
    

end
