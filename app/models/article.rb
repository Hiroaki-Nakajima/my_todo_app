class Article < ApplicationRecord
  belongs_to :user

  def self.search(search)
    return Article.all unless search
    Article.where('content LIKE(?)', "%#{search}%")
  end
end
