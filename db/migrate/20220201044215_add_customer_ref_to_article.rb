class AddCustomerRefToArticle < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :customer, null: false, foreign_key: true
  end
end
