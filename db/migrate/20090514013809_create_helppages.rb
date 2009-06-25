class CreateHelppages < ActiveRecord::Migration
  def self.up
    create_table :helppages do |t|
      t.string :name
      t.text :page_text
    end
  end

  def self.down
    drop_table :helppages
  end
end
