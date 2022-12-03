class AddParksTable < ActiveRecord::Migration[7.0]
  def change
    create_table :park_location do |t|
      t.column :state, :string
      t.column :park, :string
    end
  end
end
