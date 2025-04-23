class CreateNetworkStuffs < ActiveRecord::Migration[7.1]
  def change
    create_table :network_stuffs do |t|
      t.string :name

      t.timestamps
    end
  end
end
