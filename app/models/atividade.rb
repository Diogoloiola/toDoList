class Atividade < ApplicationRecord
    validates_presence_of :nomeAtividade, message: 'nao pode ser deixado em branco'
    validates_presence_of :conteudoAtividade, message: 'nao pode ser deixado em branco'
    validates_presence_of :pessoaResponsavel, message: 'nao pode ser deixado em branco'

    validates_length_of :nomeAtividade, minimum: 5, message: 'deve ter pelo menos 3 caracteres'
    validates_length_of :conteudoAtividade, minimum: 6, message: 'deve ter pelo menos 3 caracteres'
    validates_length_of :pessoaResponsavel, minimum: 3, message: 'deve ter pelo menos 3 caracteres'
    belongs_to :usuario
end
