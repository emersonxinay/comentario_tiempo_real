class CreateCommets < ActiveRecord::Migration[7.2]
  def change
    create_table :commets do |t|
      t.references :post, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
