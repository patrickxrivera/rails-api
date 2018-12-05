class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :text, null: false
      
      add_reference :comments, :commenter, references: :users, :foreign_key: true
      add_foreign_key :comments, :users, column: :commenter_id

      t.timestamps
    end
  end
end
