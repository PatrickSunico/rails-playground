class Article < ActiveRecord::Base

  # validate first if the created article has a title and is not nil, with this anything that we save as an article without a title will not be saved in our database.
  # second the length will determine the length of the title and description as to which it can be saved in the database if less than 3 or more than the maximum range it will not save through the database

  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end


article = Article.new(title: 'New title', description: 'New Desc')

article.save
