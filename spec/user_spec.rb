# require 'spec_helper'
# RSpec.describe "Users", type: :request do
#     context "Testes user" do
#         describe "Teste de aceitação" do
#             before(:all) do
#                 @parameters = {
#                     nome: "Usuario teste",
#                     email: "teste@gmail.com",
#                     password:"123456",
#                     confirm_password:"123456"
#                 }
#             end
#             it 'Checando se user aceita os params' do
#                 @user = User.create(@parameters)
#                 expect(@user).to be_valid
#             end
#             it 'Checando se user aceita sem param nome' do
#                 @user = User.create(@parameters.merge(:nome))
#                 expect(@user).to be_valid
#             end
#             it 'Checando se user aceita sem param email' do
#                 @user = User.create(@parameters.merge(:email))
#                 expect(@user).to be_valid
#             end
#             it 'Checando se user aceita sem param password' do
#                 @user = User.create(@parameters.merge(:password))
#                 expect(@user).to be_valid
#             end
#         end
#         describe "Teste unitário" do
#             before(:all) do
#                 # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS
#                 parameters = {
#                     nome: "Usuario teste",
#                     email: "teste@gmail.com",
#                     password:"123456",
#                     confirm_password:"123456"
#                 }
#                 @user = User.create(parameters)
#             end
#             # CRIAÇÃO DOS TESTE DE UNITÁRIOS
#             it 'Checando se user foi criado' do
#                 expect(@user).to be_valid
#             end
#             it 'Checando se user pode ser encontrado pelo nome' do
#                 expect(User.find_by_nome("Usuario teste")).to eq(@user)
#             end
#             it 'checando se user pode ser atualizado' do
#                 @user.update(:nome => "Usuario teste Atualizado")
#                 expect(User.find_by_nome("Usuario teste")).to eq(@user)
#             end
#             it 'Checando se user pode ser deletado' do
#                 @user.destroy
#                 expect(User.find_by(nome: "Usuario teste Atualizado")).to be_nil
#             end
#         end
#     end
# end
