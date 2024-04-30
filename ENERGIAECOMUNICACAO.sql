CREATE TABLE Antena_Comunic (
  Antena_Comunic SERIAL NOT NULL,
  Complexo_Comunicacao_Complexo_Comunicacao SERIAL NOT NULL,
  idAntena_Comunic POINT NOT NULL AUTO_INCREMENT,
  Complexo_Comunicacao_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Antena_Comunic),
  INDEX Antena_Comunic_FKIndex1(Complexo_Comunicacao_Org_Pub_Civil_Org_Pub_Civil, Complexo_Comunicacao_Complexo_Comunicacao)
);

CREATE TABLE Area_Comunicacao (
  Area_Comunicacao SERIAL NOT NULL,
  idArea_Comunicacao POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Comunicacao)
);

CREATE TABLE Area_Energia_Eletrica (
  Area_Energia_Eletrica SERIAL NOT NULL,
  Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  idArea_Energia_Eletrica POLYGON NOT NULL AUTO_INCREMENT,
  Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Energia_Eletrica),
  INDEX Area_Energia_Eletrica_FKIndex1(Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica, Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil)
);

CREATE TABLE Barragem (
  Barragem SERIAL NOT NULL,
  Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica SERIAL NOT NULL,
  idBarragem MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Barragem),
  INDEX Barragem_FKIndex1(Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica, Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil)
);

CREATE TABLE Complexo_Comunicacao (
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Complexo_Comunicacao SERIAL NOT NULL,
  Area_Comunicacao_Area_Comunicacao SERIAL NOT NULL,
  idComplexo_Comunicacao MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Civil_Org_Pub_Civil, Complexo_Comunicacao),
  INDEX Complexo_Comunicacao_FKIndex1(Area_Comunicacao_Area_Comunicacao),
  INDEX Complexo_Comunicacao_FKIndex2(Org_Pub_Civil_Org_Pub_Civil)
);

CREATE TABLE Complexo_Gerador_Energia_Eletrica (
  Complexo_Gerador_Energia_Eletrica SERIAL NOT NULL,
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Subest_Transm_Distrib_Energia_Eletrica_Subest_Transm_Distrib_Energia_Eletrica SERIAL NOT NULL,
  Subest_Transm_Distrib_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  Edif_Energia_Edif_Energia SERIAL NOT NULL,
  Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica SERIAL NOT NULL,
  idComplexo_Gerador_Energia_Eletrica MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Complexo_Gerador_Energia_Eletrica, Org_Pub_Civil_Org_Pub_Civil),
  INDEX Complexo_Gerador_Energia_Eletrica_FKIndex1(Org_Pub_Civil_Org_Pub_Civil),
  INDEX Complexo_Gerador_Energia_Eletrica_FKIndex2(Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica, Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia),
  INDEX Complexo_Gerador_Energia_Eletrica_FKIndex3(Edif_Energia_Edif_Energia),
  INDEX Complexo_Gerador_Energia_Eletrica_FKIndex4(Subest_Transm_Distrib_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia, Subest_Transm_Distrib_Energia_Eletrica_Subest_Transm_Distrib_Energia_Eletrica)
);

CREATE TABLE Condutor_Hidrico (
  Condutor_Hidrico SERIAL NOT NULL,
  Hidreletrica_Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  Termeletrica_Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  Hidreletrica_Hidreletrica SERIAL NOT NULL,
  Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Hidreletrica_Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica SERIAL NOT NULL,
  Termeletrica_Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica SERIAL NOT NULL,
  Termeletrica_Termeletrica SERIAL NOT NULL,
  idCondutor_Hidrico LINESTRING NOT NULL AUTO_INCREMENT,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Condutor_Hidrico),
  INDEX Condutor_Hidrico_FKIndex1(Massa_Dagua_Massa_Dagua),
  INDEX Condutor_Hidrico_FKIndex2(Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica, Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil),
  INDEX Condutor_Hidrico_FKIndex3(Termeletrica_Termeletrica, Termeletrica_Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica, Termeletrica_Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia),
  INDEX Condutor_Hidrico_FKIndex4(Hidreletrica_Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica, Hidreletrica_Hidreletrica, Hidreletrica_Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia)
);

CREATE TABLE Desposito_Geral (
  Desposito_Geral SERIAL NOT NULL,
  idDesposito_Geral MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Desposito_Geral)
);

CREATE TABLE Edif_comunic (
  Edif_comunic SERIAL NOT NULL,
  Complexo_Comunicacao_Complexo_Comunicacao SERIAL NOT NULL,
  idEdif_comunic MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Comunicacao_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_comunic),
  INDEX Edif_comunic_FKIndex1(Complexo_Comunicacao_Org_Pub_Civil_Org_Pub_Civil, Complexo_Comunicacao_Complexo_Comunicacao)
);

CREATE TABLE Edif_Energia (
  Edif_Energia SERIAL NOT NULL,
  Subest_Transm_Distrib_Energia_Eletrica_Subest_Transm_Distrib_Energia_Eletrica SERIAL NOT NULL,
  Subest_Transm_Distrib_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  idEdif_Energia MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Energia),
  INDEX Edif_Energia_FKIndex1(Subest_Transm_Distrib_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia, Subest_Transm_Distrib_Energia_Eletrica_Subest_Transm_Distrib_Energia_Eletrica)
);

CREATE TABLE Est_Gerad_Energia_Eletrica (
  Est_Gerad_Energia_Eletrica SERIAL NOT NULL,
  Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  idEst_Gerad_Energia_Eletrica MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Est_Gerad_Energia_Eletrica, Ponto_Trecho_Energia_Ponto_Trecho_Energia),
  INDEX Est_Gerad_Energia_Eletrica_FKIndex1(Ponto_Trecho_Energia_Ponto_Trecho_Energia)
);

CREATE TABLE Hidreletrica (
  Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica SERIAL NOT NULL,
  Hidreletrica SERIAL NOT NULL,
  Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  idHidreletrica MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica, Hidreletrica, Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia),
  INDEX Hidreletrica_FKIndex1(Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica, Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia)
);

CREATE TABLE Massa_Dagua (
  Massa_Dagua SERIAL NOT NULL,
  idMassa_Dagua POLYGON NOT NULL AUTO_INCREMENT,
  Reservatorio_Hidrico_Reservatorio_Hidrico SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Massa_Dagua),
  INDEX Massa_Dagua_FKIndex1(Reservatorio_Hidrico_Reservatorio_Hidrico)
);

CREATE TABLE Org_Pub_Civil (
  Org_Pub_Civil SERIAL NOT NULL,
  idOrg_Pub_Civil MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Civil)
);

CREATE TABLE Ponto_Trecho_Energia (
  Ponto_Trecho_Energia SERIAL NOT NULL,
  idPonto_Trecho_Energia POINT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(Ponto_Trecho_Energia)
);

CREATE TABLE Reservatorio_Hidrico (
  Reservatorio_Hidrico SERIAL NOT NULL,
  Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  idReservatorio_Hidrico POLYGON NOT NULL AUTO_INCREMENT,
  Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Reservatorio_Hidrico),
  INDEX Reservatorio_Hidrico_FKIndex1(Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica, Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil)
);

CREATE TABLE Subest_Transm_Distrib_Energia_Eletrica (
  Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  Subest_Transm_Distrib_Energia_Eletrica SERIAL NOT NULL,
  idSubest_Transm_Distrib_Energia_Eletrica MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Area_Energia_Eletrica_Area_Energia_Eletrica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Trecho_Energia_Ponto_Trecho_Energia, Subest_Transm_Distrib_Energia_Eletrica),
  INDEX Subest_Transm_Distrib_Energia_Eletrica_FKIndex1(Ponto_Trecho_Energia_Ponto_Trecho_Energia),
  INDEX Subest_Transm_Distrib_Energia_Eletrica_FKIndex2(Area_Energia_Eletrica_Area_Energia_Eletrica)
);

CREATE TABLE Termeletrica (
  Termeletrica SERIAL NOT NULL,
  Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica SERIAL NOT NULL,
  Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  Trecho_Duto_Trecho_Duto SERIAL NOT NULL,
  Desposito_Geral_Desposito_Geral SERIAL NOT NULL,
  idTermeletrica MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Termeletrica, Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica, Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia),
  INDEX Termeletrica_FKIndex1(Est_Gerad_Energia_Eletrica_Est_Gerad_Energia_Eletrica, Est_Gerad_Energia_Eletrica_Ponto_Trecho_Energia_Ponto_Trecho_Energia),
  INDEX Termeletrica_FKIndex2(Desposito_Geral_Desposito_Geral),
  INDEX Termeletrica_FKIndex3(Trecho_Duto_Trecho_Duto)
);

CREATE TABLE Torre_Comunic (
  Torre_Comunic SERIAL NOT NULL,
  Complexo_Comunicacao_Complexo_Comunicacao SERIAL NOT NULL,
  Antena_Comunic_Antena_Comunic SERIAL NOT NULL,
  idTorre_Comunic POINT NOT NULL AUTO_INCREMENT,
  Trecho_Cominic_Trecho_Cominic SERIAL NOT NULL,
  Complexo_Comunicacao_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Torre_Comunic),
  INDEX Torre_Comunic_FKIndex1(Trecho_Cominic_Trecho_Cominic),
  INDEX Torre_Comunic_FKIndex2(Antena_Comunic_Antena_Comunic),
  INDEX Torre_Comunic_FKIndex3(Complexo_Comunicacao_Org_Pub_Civil_Org_Pub_Civil, Complexo_Comunicacao_Complexo_Comunicacao)
);

CREATE TABLE Torre_Energia (
  Torre_Energia SERIAL NOT NULL,
  idTorre_Energia POINT NOT NULL AUTO_INCREMENT,
  Zona_Linhas_Energia_Comunicacao_Zona_Linhas_Energia_Comunicacao SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Torre_Energia),
  INDEX Torre_Energia_FKIndex1(Zona_Linhas_Energia_Comunicacao_Zona_Linhas_Energia_Comunicacao)
);

CREATE TABLE Trecho_Cominic (
  Trecho_Cominic SERIAL NOT NULL,
  idTrecho_Cominic LINESTRING NOT NULL AUTO_INCREMENT,
  Zona_Linhas_Energia_Comunicacao_Zona_Linhas_Energia_Comunicacao SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Cominic),
  INDEX Trecho_Cominic_FKIndex1(Zona_Linhas_Energia_Comunicacao_Zona_Linhas_Energia_Comunicacao)
);

CREATE TABLE Trecho_Duto (
  Trecho_Duto SERIAL NOT NULL,
  idTrecho_Duto LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Duto)
);

CREATE TABLE Trecho_Energia (
  Trecho_Energia SERIAL NOT NULL,
  idTrecho_Energia LINESTRING NOT NULL AUTO_INCREMENT,
  Torre_Energia_Torre_Energia SERIAL NOT NULL,
  Zona_Linhas_Energia_Comunicacao_Zona_Linhas_Energia_Comunicacao SERIAL NOT NULL,
  Ponto_Trecho_Energia_Ponto_Trecho_Energia SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Energia),
  INDEX Trecho_Energia_FKIndex1(Ponto_Trecho_Energia_Ponto_Trecho_Energia),
  INDEX Trecho_Energia_FKIndex2(Torre_Energia_Torre_Energia),
  INDEX Trecho_Energia_FKIndex3(Zona_Linhas_Energia_Comunicacao_Zona_Linhas_Energia_Comunicacao)
);

CREATE TABLE Zona_Linhas_Energia_Comunicacao (
  Zona_Linhas_Energia_Comunicacao SERIAL NOT NULL,
  Complexo_Comunicacao_Complexo_Comunicacao SERIAL NOT NULL,
  idZona_Linhas_Energia_Comunicacao POLYGON NOT NULL AUTO_INCREMENT,
  Complexo_Comunicacao_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Zona_Linhas_Energia_Comunicacao),
  INDEX Zona_Linhas_Energia_Comunicacao_FKIndex1(Complexo_Gerador_Energia_Eletrica_Complexo_Gerador_Energia_Eletrica, Complexo_Gerador_Energia_Eletrica_Org_Pub_Civil_Org_Pub_Civil),
  INDEX Zona_Linhas_Energia_Comunicacao_FKIndex2(Complexo_Comunicacao_Org_Pub_Civil_Org_Pub_Civil, Complexo_Comunicacao_Complexo_Comunicacao)
);


