class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, presence:true
    validates :content, length: {minimum: 150}
    validates :summary, length: {maximum: 150}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validates_with PostValidator
end
