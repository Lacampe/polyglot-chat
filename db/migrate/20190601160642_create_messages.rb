class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true, index: true
      t.references :conversation, foreign_key: true, index: true
      t.text :body, null: false

      t.timestamps
    end
  end
end
