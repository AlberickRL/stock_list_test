class CreatePackage < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.references :family, foreign_key: true
      t.boolean :delivered

      t.timestamps
    end
  end
end
