class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :code
      t.string :os
      t.string :version
      t.string :checked_out
      t.string :model

    end
  end
end
