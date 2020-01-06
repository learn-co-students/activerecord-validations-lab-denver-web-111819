class Post < ActiveRecord::Base
  validates :title, presence:true 
  validates :content, length:{minimum:250}
  validates :summary, length:{maximum:250}
  validats :category, inclusion{in:%w{Fiction Non-Fiction}}
  
  validate :clickbait


CLICKBAIT_PATTERNS = [
  /Wont Believe/i,
  /Secret/i,
  /Top[1..9]/i,
  /Guess/i
  ]

def is_clickbait
  
  if CLICKBAIT_PATTERNS.none? {|pat| pat.match title}
    errors.add(:title, 'must be clickbait' )
  end
end


end

