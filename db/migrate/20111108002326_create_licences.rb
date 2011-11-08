class CreateLicences < ActiveRecord::Migration
  def self.up
    create_table :licences do |t|
      t.string :name
      t.float :cost
      t.integer :days_valid
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :licences
  end
end
