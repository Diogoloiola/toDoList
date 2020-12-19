class CreateAtividades < ActiveRecord::Migration[6.1]
  def change
    create_table :atividades do |t|
      t.string :nomeAtividade
      t.string :conteudoAtividade
      t.string :criadaPor
      t.string :pessoaResponsavel
      t.integer :estado

      t.timestamps
    end
  end
end
