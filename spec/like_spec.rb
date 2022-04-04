# require 'like'
# RSpec.describe Like do
#     it "Criando estrutura inicial para testes" do
#         # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS PRINCIPAIS
#         parameters_user = {
#             nome: "Usuario teste",
#             email: "teste@gmail.com",
#             password:"123456",
#             confirm_password:"123456"
#         }
#         # CRIAÇÃO DOS OBJETOS
#         @user = User.create(parameters_user)

#         # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS
#         parameters_post = {
#             user_id:  "#{@user.id}",
#             post_msg: "Mensage de teste"
#         }

#         # CRIAÇÃO DOS OBJETOS
#         @post = Post.create(parameters_post)

#         # DEFININDO PARAMETROS PARA CRIAÇÃO DOS OBJETOS
#         parameters_like_post = {
#             user_id:  "#{@user.id}",
#             post_id:  "#{@post.id}"
#         }

#         # CRIAÇÃO DOS OBJETOS
#         @like = LikePost.create(parameters_like_post)
#     end
#     # CRIAÇÃO DOS TESTE DE UNITÁRIOS
#     it "Checando criação de like no post " do
#         expect(@like).to be_valid
#     end
#     it 'Checando se post possui likes' do
#         expect(LikePost.where(post_id: @post.id)).to eq(@like)
#     end
#     it 'Checando se like pode ser deletado' do
#         @like.destroy
#         expect(LikePost.where(post_id: @post.id).take).to eq(@like).to be_nil
#     end
#     it "Procedimento final deletando criações do teste" do
#         @user.destroy
#         @post.destroy
#     end
# end
