class AddUserToSound < ActiveRecord::Migration[6.0]
  def change
    add_reference :sounds, :user, null: false, foreign_key: true
  end
end
