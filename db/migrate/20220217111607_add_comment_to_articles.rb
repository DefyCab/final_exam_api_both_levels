class AddCommentToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :comment, null: false, foreign_key: true
  end
end
