class AddPasswordToWorkers < ActiveRecord::Migration[6.1]
  def change
    add_column :workers, :password, :string
  end
end
