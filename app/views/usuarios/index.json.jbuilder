json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :authtoken, :nombre, :apellidos, :nombre_usuario, :contrasenna
  json.url usuario_url(usuario, format: :json)
end
