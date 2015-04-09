class Usuario < ActiveRecord::Base
  @usuario = Usuarios.new({
    :Nombre=>"Ignacio",
    :Apellidos=>"Valerio",
    :Nombre_Usuario=>"Nacho",
    :Contrasenna=>"1"});
  @usuario.save();
end
