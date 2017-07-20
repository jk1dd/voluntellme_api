class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :city
      t.string :county
      t.string :state
      t.string :zip
      t.string :loc

      t.timestamps
    end
  end
end
