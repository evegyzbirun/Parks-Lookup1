class AddParksTable < ActiveRecord::Migration[7.0]
  def change
    create_table :parks do |t|
      t.column :state, :string
      t.column :park, :string
    end
  end
end
