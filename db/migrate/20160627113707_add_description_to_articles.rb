class AddDescriptionToArticles < ActiveRecord::Migration
  def change
    # Third give it the attribute type of description which is text
    add_column :articles, :description, :text

    #add a new timestamp with a type of datetime
    add_column :articles, :created_at, :datetime

    #add a new updated at timestamp with a type of datetime
    add_column :articles, :updated_at, :datetime
  end
end
