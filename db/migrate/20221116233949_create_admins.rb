class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.boolean :is_admin
      t.integer :user_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
