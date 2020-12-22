require "test_helper"

class AtividadeTest < ActiveSupport::TestCase
  test "Verificando se a instancia o obj normal" do
     assert Atividade.new.present?
  end
  test "Objetio sem o conteudo Atividade" do
   flag = Atividade.new(nomeAtividade: "teste", pessoaResponsavel: "maria").invalid?
   assert(flag == true, 'nao pode ser deixado em branco')
  end  
  test "Objetio sem a pessoa resonsavel" do
    flag = Atividade.new(conteudoAtividade: "isso é uma atividade que de ser entregue ate sexta", pessoaResponsavel: "maria").invalid?
    assert(flag == true, 'nao pode ser deixado em branco')
   end

  test "Objetio sem a pessoa resonsavel e sem o nome da atividade" do
    flag = Atividade.new(conteudoAtividade: "isso é uma atividade que de ser entregue ate sexta").invalid?
    assert(flag == true, 'nao pode ser deixado em branco')
   end

   test "Objetio so com pessoa responsavel" do
    flag = Atividade.new(pessoaResponsavel: "maria").invalid?
    assert(flag == true, 'nao pode ser deixado em branco')
   end

   test "Objetio so com o nome da atividade" do
    flag = Atividade.new(nomeAtividade: "Fazer planilhas").invalid?
    assert(flag == true, 'nao pode ser deixado em branco')
   end

   test "Objetio com o nome da ativiade menor que 5" do
    flag = Atividade.new(nomeAtividade: "abcd").invalid?
    assert(flag == true)
   end

   test "Objetio com o conteudo atividade menor que 6" do
      flag = Atividade.new(conteudoAtividade: "agora").invalid?
      assert(flag == true)
   end

   test "Objetio com o pessoa responsavel menor que 3" do
    flag = Atividade.new(pessoaResponsavel: "du").invalid?
    assert(flag == true)
   end

end
