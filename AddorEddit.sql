USE [PracticaFinal]
GO
/****** Object:  StoredProcedure [dbo].[UsuariosAddoEdit]    Script Date: 12/12/2018 2:30:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[UsuariosAddoEdit]
@ID_usuario int,
@Nombre varchar(20),
@Apellido varchar(20),
@Clave varchar(20),
@Sexo char,
@Rol varchar(20),
@Fehca_registro date,
@Fecha_acceso date,
@B_activo char
AS
	IF @ID_usuario = 0
	INSERT INTO T_usuarios(ID_usuario, Nombre, Apellido, Clave, Sexo,Rol,Fehca_registro,Fecha_acceso,B_activo)
	VALUES (@ID_usuario,@Nombre,@Apellido,@Clave,@Sexo,@Rol,@Fehca_registro,@Fecha_acceso,@B_activo)
	ELSE
	UPDATE T_usuarios
	SET
	ID_usuario = @ID_usuario,
	Nombre = @Nombre,
	Apellido = @Apellido,
	Clave = @Clave,
	Sexo = @Sexo,
	Rol = @Rol,
	Fehca_registro = @Fehca_registro,
	Fecha_acceso = @Fecha_acceso,
	B_activo = @B_activo
	WHERE ID_usuario = @ID_usuario