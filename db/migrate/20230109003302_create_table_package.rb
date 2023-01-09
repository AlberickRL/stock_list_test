class CreateTablePackage < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.string :type

      t.timestamps
    end
  end
end
