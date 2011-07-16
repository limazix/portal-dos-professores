class AddNomeRealToProfessors < ActiveRecord::Migration
  def self.up
    add_column :professors, :nome_real, :string
  end

  def self.down
    remove_column :professors, :nome_real
  end
end
