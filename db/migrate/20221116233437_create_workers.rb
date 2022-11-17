class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :job_type
      t.string :location

      t.timestamps
    end
  end
end
