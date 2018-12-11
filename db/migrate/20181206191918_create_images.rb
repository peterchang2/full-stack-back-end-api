class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.date :date
      t.string :caption
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
