CREATE TABLE [Fato_Professor_Curso] (
  [id_fato] integer PRIMARY KEY,
  [id_professor] integer,
  [id_curso] integer,
  [id_departamento] integer,
  [data_oferta] date,
  [horas_ministradas] integer
)
GO

CREATE TABLE [Dim_Professor] (
  [id_professor] integer PRIMARY KEY,
  [nome] nvarchar(255),
  [email] nvarchar(255)
)
GO

CREATE TABLE [Dim_Curso] (
  [id_curso] integer PRIMARY KEY,
  [nome_curso] nvarchar(255),
  [carga_horaria] integer
)
GO

CREATE TABLE [Dim_Departamento] (
  [id_departamento] integer PRIMARY KEY,
  [nome_departamento] nvarchar(255)
)
GO

CREATE TABLE [Dim_Data] (
  [data] date PRIMARY KEY,
  [ano] integer,
  [mes] integer
)
GO

ALTER TABLE [Fato_Professor_Curso] ADD FOREIGN KEY ([id_professor]) REFERENCES [Dim_Professor] ([id_professor])
GO

ALTER TABLE [Fato_Professor_Curso] ADD FOREIGN KEY ([id_curso]) REFERENCES [Dim_Curso] ([id_curso])
GO

ALTER TABLE [Fato_Professor_Curso] ADD FOREIGN KEY ([id_departamento]) REFERENCES [Dim_Departamento] ([id_departamento])
GO

ALTER TABLE [Fato_Professor_Curso] ADD FOREIGN KEY ([data_oferta]) REFERENCES [Dim_Data] ([data])
GO
