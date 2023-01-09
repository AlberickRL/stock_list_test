class CreateTableFamily < ActiveRecord::Migration[7.0]
  def change
    create_table :families do |t|
      t.string :family_name
      t.integer :family_members

      t.timestamps
    end
  end
end
