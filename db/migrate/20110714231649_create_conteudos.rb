class CreateConteudos < ActiveRecord::Migration
  def self.up
    create_table :conteudos do |t|
      t.text :texto
      t.references :professor

      t.timestamps
    end
  end

  def self.down
    drop_table :conteudos
  end
end
