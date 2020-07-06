class CreateSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :sounds do |t|
      t.text :url
      t.text :description

      t.timestamps
    end
  end
end
