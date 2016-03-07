class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :website_url
      t.text :description
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
