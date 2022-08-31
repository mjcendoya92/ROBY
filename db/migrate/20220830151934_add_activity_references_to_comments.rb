class AddActivityReferencesToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :activity, null: false, foreign_key: true
  end
end
