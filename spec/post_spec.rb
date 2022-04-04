# require 'post'
# RSpec.describe Post do
#     describe "Testes de aceitação" do
#         before(:all) do
#             # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS PRINCIPAIS
#             parameters_post = {
#                 user_id:  "#{@user.id}",
#                 post_msg: "Mensage de teste"
#             }

#             # CRIAÇÃO DOS OBJETOS
#             @post = Post.create(parameters_post)
#         end
#     end
#     describe "Testes unitário" do
#         before(:all) do
#             # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS PRINCIPAIS
#             parameters_user = {
#                 nome: "Usuario teste",
#                 email: "teste@gmail.com",
#                 password:"123456",
#                 confirm_password:"123456"
#             }
#             # CRIAÇÃO DOS OBJETOS
#             @user = User.create(parameters_user)

#             # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS SECUNDÁRIOS
#             parameters_post = {
#                 user_id:  "#{@user.id}",
#                 post_msg: "Mensage de teste"
#             }
#             # CRIAÇÃO DOS OBJETOS
#             @post = Post.create(parameters_post)
#         end
#         # CRIAÇÃO DOS TESTE DE UNITÁRIOS
#         it "Checando criação de post com user de teste" do
#             expect(@post).to be_valid
#         end
#         it 'Checando se post pode ser achado pelo id do user' do
#             expect(Post.where(user_id: @user.id).take).to eq(@post)
#         end
#         it 'checando se post pode ser atualizado' do
#             @post.update(:post_msg => "Mensage de teste atualizada")
#             expect(Post.where(user_id: @user.id).take).to eq(@post)
#         end
#         it 'Checando se post pode ser deletado' do
#             @post.destroy
#             expect(Post.where(user_id: @user.id).take).to eq(@post).to be_nil
#         end
#         it "Procedimento final deletando criações do teste" do
#             @user.destroy
#         end
#     end
# end
