class AddLanguageToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :language, :string, null: false, default: 'en'
  end
end
