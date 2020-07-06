class CreateUserSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sounds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :sound, null: false, foreign_key: true

      t.timestamps
    end
  end
end
