class RemoveAgeFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :age, :integer
  end
end
