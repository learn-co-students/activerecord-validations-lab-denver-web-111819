class Post < ActiveRecord::Base
    include ActiveModel::Validations

    validates :title, presence: true
    validates :content, presence: true, length: {minimum: 250}
    validates :summary, presence: true, length: {maximum: 250}
    validates :category, presence: true, inclusion: {in: %w{Fiction Non-Fiction}}
    validates_with ClickbaitValidator

end

# validates :title, clickbait: true
