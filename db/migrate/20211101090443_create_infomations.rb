class CreateInfomations < ActiveRecord::Migration[5.2]
  def change
    create_table :infomations do |t|
      t.string :title, null: false
      t.string :cost, null: false
      t.string :attack, null: false
      t.string :health, null: false
      t.text :body, null: false
      t.string :e_attack, null: false
      t.string :e_health, null: false
      t.text :e_body, null: false
      t.integer :image_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
