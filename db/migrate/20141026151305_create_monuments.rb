class CreateMonuments < ActiveRecord::Migration
  def change
    create_table :monuments do |t|
      t.string :name
      t.string :description
      t.references :category, index: true
      t.references :collection, index: true

      t.timestamps
    end
  end
end
