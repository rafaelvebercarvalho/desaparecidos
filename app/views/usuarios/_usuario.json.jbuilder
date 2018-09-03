json.extract! usuario, :id, :nome, :senha, :telefone, :email, :endereco, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
