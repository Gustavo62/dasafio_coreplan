# require 'seguidor'
# RSpec.describe Seguidor do
#     describe "Teste unitário" do
#         before(:all) do
#             # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS PRINCIPAIS
#             parameters_user1 = {
#                 nome: "Usuario teste",
#                 email: "teste@gmail.com",
#                 password:"123456",
#                 confirm_password:"123456"
#             }
#             parameters_user2 = {
#                 nome: "Usuario teste 2",
#                 email: "teste2@gmail.com",
#                 password:"123456",
#                 confirm_password:"123456"
#             }
#             # CRIAÇÃO DOS OBJETOS
#             @user = User.create(parameters_user)
#             @user2= User.create(parameters_user2)


#             # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS
#             parameters_seguidor = {
#                 seguidor:"#{@user.id}",
#                 seguido:  "#{@user2.id}"
#             }

#             # CRIAÇÃO DOS OBJETOS
#             @seguidor = Seguidor.create(parameters_seguidor)
#         end
#         # CRIAÇÃO DOS TESTE DE UNITÁRIOS
#         it "Checando se user1 seguiu user2" do
#             expect(@seguidor).to be_valid
#         end
#         it 'Checando se ha notificação de novo seguidor para ' do
#             expect(Seguidor.where(seguido: @user2.id).take).to eq(@seguidor)
#         end
#         it "Atualizando notificação para 'visualizada'" do
#             @seguidor.update(:visualizado => true)
#             expect(Seguidor.where(seguido: @user2.id).take).to eq(@seguidor)
#         end
#         it "Checando se é possivel deletar inserção na tabela de seguidor" do
#             @seguidor.destroy
#             expect(Seguidor.where(seguido: @user2.id).take).to be_nil
#         end
#         it "Procedimento final deletando criações do teste" do
#             @user.destroy
#             @user2.destroy
#         end
#     end
# end
