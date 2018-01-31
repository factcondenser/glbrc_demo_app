class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.integer :application_id
      t.integer :user_id
      t.timestamps
    end
  end
end
