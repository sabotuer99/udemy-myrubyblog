class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :txt

      t.timestamps null: false
    end
  end
end
