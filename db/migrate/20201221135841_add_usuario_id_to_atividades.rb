class AddUsuarioIdToAtividades < ActiveRecord::Migration[6.1]
  def change
    add_column :atividades, :usuario_id, :integer
    add_index :atividades, :usuario_id
  end
end
