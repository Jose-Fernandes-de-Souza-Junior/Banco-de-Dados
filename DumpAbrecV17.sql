CREATE DATABASE  IF NOT EXISTS `abrec` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `abrec`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 192.168.22.9    Database: abrec
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendamento` (
  `id_agendamento` int NOT NULL AUTO_INCREMENT,
  `id_colaborador` int NOT NULL,
  `id_matricula` int NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(125) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `clinica` varchar(100) DEFAULT NULL,
  `profissional` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `anotacao` text NOT NULL,
  PRIMARY KEY (`id_agendamento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamento`
--

LOCK TABLES `agendamento` WRITE;
/*!40000 ALTER TABLE `agendamento` DISABLE KEYS */;
INSERT INTO `agendamento` VALUES (1,3,17,'48785595621','Samara Triz','678923323','ClinicaRoot','Psicóloga','2023-08-16','20:00:00','');
/*!40000 ALTER TABLE `agendamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_sigilosa`
--

DROP TABLE IF EXISTS `area_sigilosa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_sigilosa` (
  `id_area_sigilosa` int NOT NULL AUTO_INCREMENT,
  `obito_paciente` varchar(45) DEFAULT NULL,
  `observacao_gerais` varchar(45) DEFAULT NULL,
  `id_matricula` int DEFAULT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_area_sigilosa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_sigilosa`
--

LOCK TABLES `area_sigilosa` WRITE;
/*!40000 ALTER TABLE `area_sigilosa` DISABLE KEYS */;
INSERT INTO `area_sigilosa` VALUES (1,'Ativo','Leve mudança no peso',6,'2023-09-25 20:30:51'),(2,'Ativo','Teste DDDD',20,'2023-10-09 21:27:21'),(3,'Ativo','Teste AAA',20,'2023-10-09 21:27:36'),(4,'Ativo','Fer fFF',20,'2023-10-09 21:29:21'),(5,'Ativo','',20,'2023-10-09 21:29:51'),(6,'Ativo','',20,'2023-10-09 21:30:21');
/*!40000 ALTER TABLE `area_sigilosa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficios`
--

DROP TABLE IF EXISTS `beneficios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficios` (
  `id_beneficios` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `codigo` varchar(45) NOT NULL,
  `lote` varchar(45) NOT NULL,
  `unidade_medida` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) NOT NULL,
  `validade` date DEFAULT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id_beneficios`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficios`
--

LOCK TABLES `beneficios` WRITE;
/*!40000 ALTER TABLE `beneficios` DISABLE KEYS */;
INSERT INTO `beneficios` VALUES (1,'Medicação','3432542','5764543','Frasco','Dipirona','2023-09-25',999901),(3,'Medicacional','1312321','5555555','Frasco','Piridona','2000-01-01',6858),(4,'Selecione...','01121','','Selecione...','lopold','2023-09-28',45),(5,'Medicação','666','123213134','Unidade','legald+','2023-10-29',4),(7,'Alimentação','777','21323412','Grama','louco','2032-10-10',9),(8,'Alimentação','888','2342341','Grama','grama','2023-10-10',27);
/*!40000 ALTER TABLE `beneficios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica`
--

DROP TABLE IF EXISTS `clinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinica` (
  `id_clinica` int NOT NULL AUTO_INCREMENT,
  `cnpj` char(15) DEFAULT NULL,
  `razao_social` varchar(100) DEFAULT NULL,
  `nome_fantasia` varchar(100) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `observacao` tinytext,
  `id_endereco` int DEFAULT NULL,
  PRIMARY KEY (`id_clinica`),
  UNIQUE KEY `cnpj_UNIQUE` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica`
--

LOCK TABLES `clinica` WRITE;
/*!40000 ALTER TABLE `clinica` DISABLE KEYS */;
INSERT INTO `clinica` VALUES (1,'36478364543','6427867432','ClinicaRoot','276438','@gmail.com','çabçabçabçabçabça',4),(2,'8747659758','Senac','Senac_Clinica','67992486793','senac@gmail.com','Clinica Senac',8),(3,'4575687435','857634587463','diego_clinicas','7462783467','@gmail.com','khbjafbljkabfanksblfab',15),(4,'25699654000123','Cliníca do Zé','Clínica do ZEZE','6799882566','clinicaze@gmail.com','teste zé',25),(5,'0210220230024','DAVITA CLINICA ','DAVITA CLINICA','6799999999','clinica@davita.com','okokokokokok',28);
/*!40000 ALTER TABLE `clinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaborador`
--

DROP TABLE IF EXISTS `colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborador` (
  `id_colaborador` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `pis` varchar(50) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `salario` decimal(10,2) NOT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `periodo` varchar(50) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `id_matricula` int DEFAULT NULL,
  PRIMARY KEY (`id_colaborador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborador`
--

LOCK TABLES `colaborador` WRITE;
/*!40000 ALTER TABLE `colaborador` DISABLE KEYS */;
INSERT INTO `colaborador` VALUES (0001,'6985769854','2023-09-25',462534.00,'Assistente Social','Integral','root','123','adm',1),(0002,'877846','2023-09-25',1200.00,'Assistente Social','Vespertino','jose','123','adm',5),(0003,'563783','2023-10-02',2734687.00,'Psicólogo (a)','Integral','psic','123','psic',7),(0004,'5859454053','2023-01-01',67888.00,'Nutricionista','Integral','nutri','123','nutri',16),(0005,'6561651651','2023-10-10',55000.00,'Fisioterapeuta','Integral','fisio','123','fisio',21);
/*!40000 ALTER TABLE `colaborador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id_consulta` int NOT NULL AUTO_INCREMENT,
  `situacao` varchar(20) DEFAULT NULL,
  `data_consulta` date NOT NULL,
  `hora` varchar(20) DEFAULT NULL,
  `observacao` text,
  `id_matricula` int DEFAULT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_consulta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'Retorno','2023-08-16','20:00:00','KHBKDLAVDHKDA',17,'2023-10-17 21:36:43');
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuidador`
--

DROP TABLE IF EXISTS `cuidador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuidador` (
  `id_cuidador` int NOT NULL AUTO_INCREMENT,
  `parentesco` varchar(100) NOT NULL,
  `observacao` text,
  `id_matricula` int DEFAULT NULL,
  PRIMARY KEY (`id_cuidador`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuidador`
--

LOCK TABLES `cuidador` WRITE;
/*!40000 ALTER TABLE `cuidador` DISABLE KEYS */;
INSERT INTO `cuidador` VALUES (1,'mae','JKAHVKDJAVDNAVHSDA',3),(2,'Esposa','Teste teste rrr',9),(3,'Tio','irmãos fer',15);
/*!40000 ALTER TABLE `cuidador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_evento`
--

DROP TABLE IF EXISTS `curso_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_evento` (
  `id_curso_evento` int NOT NULL AUTO_INCREMENT,
  `nome_curso_evento` varchar(150) DEFAULT NULL,
  `tipo_curso` varchar(100) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `responsavel` varchar(100) DEFAULT NULL,
  `horario_inicial` time DEFAULT NULL,
  `horario_final` time DEFAULT NULL,
  `vagas` int DEFAULT NULL,
  `segunda_feira` tinyint(1) DEFAULT NULL,
  `terca_feira` tinyint(1) DEFAULT NULL,
  `quarta_feira` tinyint(1) DEFAULT NULL,
  `quinta_feira` tinyint(1) DEFAULT NULL,
  `sexta_feira` tinyint(1) DEFAULT NULL,
  `sabado` tinyint(1) DEFAULT NULL,
  `situacao` smallint DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id_curso_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_evento`
--

LOCK TABLES `curso_evento` WRITE;
/*!40000 ALTER TABLE `curso_evento` DISABLE KEYS */;
INSERT INTO `curso_evento` VALUES (1,'Cozinha','Interno','2023-09-25','2023-09-25','Vespertino','José','14:30:00','15:30:00',35,1,0,1,0,1,1,1,'Fazer Comida'),(2,'Desenho','Externo','2023-10-07','2023-10-28','Vespertino','Diego','15:30:00','17:00:00',50,1,0,1,0,1,0,1,'Arte'),(3,'Arte','Externo','2023-10-09','2023-10-23','Vespertino','Diego','15:00:00','17:00:00',30,1,0,1,0,1,0,1,'pintura'),(4,'Jogos','Interno','2023-10-16','2023-10-30','Noturno','Thiago','19:00:00','21:00:00',25,0,1,0,1,0,1,1,'jogar'),(5,'Curso Teste F','Interno','2023-10-10','2023-10-20','Vespertino','maria D.','12:45:00','15:45:00',40,1,0,1,0,1,0,1,'TEste RR');
/*!40000 ALTER TABLE `curso_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `cep` varchar(100) DEFAULT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'79.092-330','Rua Luiz Boggi','543','Jardim','Campo','MS'),(2,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(3,'79.092-230','Rua Beatrio da Costa Moraes','123','Coophamat','Campo Grande','MS'),(4,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(5,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(6,'79.092-330','Rua Luiz Boggi','5435','Jardim','Campo','MS'),(7,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(8,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(9,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(10,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(11,'79.013-450','Rua Serra do Divisor','1266','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(12,'79.091-140','Rua Casuarina','162','Bonjardim','Campo Grande','MS'),(13,'79.013-450','Rua Serra do Divisor','1127','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(14,'79.091-111','Rua Manoel Flores da Silva','132','Residencial Flores','Campo Grande','MS'),(15,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(16,'79.013-450','Rua Serra do Divisor','1500','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(17,'79.084-810','Rua Cecílio Alves Correa','130','Conjunto Aero Rancho','Campo Grande','MS'),(18,'79.013-450','Rua Serra do Divisor','1555','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(19,'79.013-450','Rua Serra do Divisor','1236','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(20,'79.013-450','Rua Serra do Divisor','452','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(21,'79.013-450','Rua Serra do Divisor','7566','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(22,'79.013-450','Rua Serra do Divisor','1566','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(23,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(24,'79.092-330','Rua Luiz Boggi','123','Jardim Tijuca','Campo Grande','MS'),(25,'79.002-205','Rua Marechal Rondon','156','Centro','Campo Grande','MS'),(26,'79.013-450','Rua Serra do Divisor','17777','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(27,'79.013-450','Rua Serra do Divisor','1620','Conjunto Habitacional Jardim Talismã','Campo Grande','MS'),(28,'79.084-810','Rua Cecílio Alves Correa','28','Conjunto Aero Rancho','Campo Grande','MS');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int NOT NULL AUTO_INCREMENT,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `cnpj` char(14) NOT NULL,
  `telefone_celular` char(11) DEFAULT NULL,
  `telefone_fixo` char(10) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `contato` varchar(100) DEFAULT NULL,
  `inscricao_municipal` char(11) DEFAULT NULL,
  `inscricao_estadual` char(14) DEFAULT NULL,
  `observacao` text,
  `id_endereco` int DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`),
  UNIQUE KEY `cnpj` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Senac','Senac_Fornecedor','7465973984','67992486793','67992486','Senac@gmail.com','67992486793','5341','23441','Parceria Senac',10);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto_usuario`
--

DROP TABLE IF EXISTS `foto_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foto_usuario` (
  `idfoto_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `caminho` varchar(250) NOT NULL,
  `id_usuario` varchar(45) DEFAULT NULL,
  `id_colaborador` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfoto_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_usuario`
--

LOCK TABLES `foto_usuario` WRITE;
/*!40000 ALTER TABLE `foto_usuario` DISABLE KEYS */;
INSERT INTO `foto_usuario` VALUES (1,'TesteFoto','C:/Users/vboxuser/Pictures/diego.jpg','0012',NULL),(2,'root','C:/Users/vboxuser/OneDrive - Serviço Nacional de Aprendizagem Comercial/clone netflix/netflix-clone/public/logo192.png',NULL,'1');
/*!40000 ALTER TABLE `foto_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `id_horario` int NOT NULL AUTO_INCREMENT,
  `id_agendamento` int NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_horario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutri_usuario`
--

DROP TABLE IF EXISTS `nutri_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutri_usuario` (
  `idnutri_usuario` int NOT NULL AUTO_INCREMENT,
  `peso` varchar(45) DEFAULT NULL,
  `altura` varchar(45) DEFAULT NULL,
  `imc` varchar(45) DEFAULT NULL,
  `atendimento` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `evolucao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnutri_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutri_usuario`
--

LOCK TABLES `nutri_usuario` WRITE;
/*!40000 ALTER TABLE `nutri_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `nutri_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes` (
  `id_participante` int NOT NULL AUTO_INCREMENT,
  `id_evento` int DEFAULT NULL,
  `id_matricula` int DEFAULT NULL,
  PRIMARY KEY (`id_participante`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (1,1,6),(2,1,11),(3,1,11),(4,1,12),(5,1,12),(6,1,6),(7,3,17),(8,4,2),(9,4,20);
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id_matricula` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `cpf` char(20) DEFAULT NULL,
  `rg` char(20) DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `orgao_exp` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `telefone` char(30) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `escolaridade` varchar(100) DEFAULT NULL,
  `estado_civil` varchar(100) DEFAULT NULL,
  `pessoa_deficiencia` varchar(50) DEFAULT NULL,
  `tipo_deficiencia` varchar(45) DEFAULT NULL,
  `outras_deficiencias` varchar(45) DEFAULT NULL,
  `id_endereco` int DEFAULT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_matricula`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (0001,'root','2023-09-25','56785856897','7699845','2023-09-25','pps','Masculino','Ativo','27346784362','@gmail.com','Fundamental incompleto','Casado',NULL,NULL,NULL,1,'2023-09-25 19:09:16'),(0002,'userRoot','2023-09-25','28634797432','472834723','2023-09-25','ssp','Masculino','Ativo','26734786432','gmail.com','Fundamental incompleto','Divorciado','SIM','Amputada','',2,'2023-09-25 19:10:09'),(0003,'cuidadorRoot','2023-09-25','98576856956','4567849','2023-09-25','pps','Feminino',NULL,'46253462542','root@gmail.com',NULL,NULL,NULL,NULL,NULL,3,'2023-09-25 19:10:54'),(0005,'José','2023-09-25','76583749876','657767364','2023-09-25','ssp','Masculino','Inativo','67992486793','josé@gmail.com','Superior completo','Casado',NULL,NULL,NULL,7,'2023-09-25 20:15:52'),(0006,'Thiago Almeida','2023-09-25','52663746857','2636746','2023-09-25','ssp','Masculino','Inativo','67992486793','thiago@gmail.com','Superior completo','Solteiro','NÃO','Motora','None',9,'2023-09-25 20:19:43'),(0007,'Pisc','2023-09-27','62534672546','7362163','2023-09-27','ssp','Feminino','Inativo','82634823647','piscrr@gmail.com','Médio incompleto','Divorciado',NULL,NULL,NULL,11,'2023-09-26 21:14:47'),(0008,'Erick Silva Mendes','2023-09-28','02143784111','001572154','2023-09-28','ssp','Masculino','Ativo','67991263500','erick@gmail.com','Superior completo','Solteiro','SIM','Outra','Miopia',12,'2023-09-27 21:15:44'),(0009,'Maria','2023-09-27','04067630115','0158265','2023-09-27','sspppp','Feminino',NULL,'6733850352','maria@gmail.com',NULL,NULL,NULL,NULL,NULL,13,'2023-09-27 21:18:24'),(0010,'Abilio Dias','1949-03-22','04067630116','00001659','2000-01-01','ssp','Masculino','Ativo','67993401000','abilio@gmail.com','Médio','Casado','SIM','Visual','',14,'2023-09-27 21:21:28'),(0011,'testesbalbalblabla','2023-09-28','46253467235','6742536','2023-09-28','ssppl','Masculino','Inativo','32536712536','@gmail.com','Médio','Casado','NÃO','Motora','None',16,'2023-09-27 22:29:09'),(0012,'THIAGO ALMEIDA','2023-10-02','01342850181','144444444','2023-10-02','SSP','Masculino','Ativo','6799999','thiagoalmeida@live.com','Selecione','Selecione','NÃO','Visual','',17,'2023-10-02 20:20:09'),(0013,'Nathan T','2023-10-02','45678900999','65895464','2023-10-02','dfdfd','Masculino','Ativo','67099808777','nathaghh@gmail.com','Médio','Casado','NÃO','Motora','',18,'2023-10-02 21:01:37'),(0014,'Fernando A.','1998-12-02','05469852111','458931423','2016-05-10','ssee','Masculino','Ativo','57694820983','fernando@gmail.com','Médio incompleto','Solteiro','SIM','Mental','',19,'2023-10-02 21:36:49'),(0015,'Andrade da Silva','2022-08-07','56783423222','6564984','2022-08-07','SSPPO','Masculino',NULL,'46309029799','andrade@gmai.com',NULL,NULL,NULL,NULL,NULL,20,'2023-10-02 21:39:18'),(0016,'Amanda Nutric','1988-06-25','78957486111','4596441','2021-08-08','SSP','Masculino','Inativo','67809034343','nutri@gmail.com','Superior completo','Casado',NULL,NULL,NULL,21,'2023-10-02 21:52:55'),(0017,'Samara Triz','1999-05-12','48785595621','454874523','2023-10-03','SSP','Feminino','Ativo','6789233232','samara@gmail.com','Médio incompleto','Divorciado','SIM','Visual','',22,'2023-10-02 22:03:21'),(0018,'TesteCameraBLBq','2023-10-03','27634782467','462734627','2023-10-03','ssp','Masculino','Ativo','42568463746','teste@gmail.com','Fundamental incompleto','Divorciado','SIM','Visual','',23,'2023-10-02 22:12:12'),(0019,'TesteFoto','2023-10-06','46236487264','647286478','2023-10-06','ssp','Masculino','Ativo','46235467832','@gmail.com','Médio','Viúvo/a','SIM','Visual','',24,'2023-10-05 22:42:19'),(0020,'José Zé Peqiueno','1990-05-10','58778965712','4494626','2022-05-12','SSPP','Masculino','Inativo','67989615498','sedr@gmail.com','Fundamental incompleto','Divorciado/a','NÃO','','None',26,'2023-10-09 21:08:07'),(0021,'Amanda R.','1989-12-12','58712458888','982619784','2022-05-04','SSPP','Masculino','Inativo','67952694161','fisio@gmail.com','Superior completo','Divorciado',NULL,NULL,NULL,27,'2023-10-10 20:15:42');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saida_beneficio`
--

DROP TABLE IF EXISTS `saida_beneficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saida_beneficio` (
  `id_saida_beneficio` int NOT NULL AUTO_INCREMENT,
  `id_matricula` varchar(45) DEFAULT NULL,
  `cpf` char(20) NOT NULL,
  `quantidade_retirada` varchar(45) DEFAULT NULL,
  `data_retirada` varchar(45) DEFAULT NULL,
  `cod_beneficio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_saida_beneficio`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saida_beneficio`
--

LOCK TABLES `saida_beneficio` WRITE;
/*!40000 ALTER TABLE `saida_beneficio` DISABLE KEYS */;
INSERT INTO `saida_beneficio` VALUES (1,'6','52663746857','10','2023-01-23',NULL),(2,'6','52663746857','3','2023-01-09',NULL),(3,'6','52663746857','5','2023-01-19',NULL),(4,'6','52663746857','99','2023-01-01',NULL),(5,'6','52663746857','99','2222-02-28',NULL),(6,'6','52663746857','39','2023-01-24',NULL),(7,'6','52663746857','99','2020-01-13',NULL),(8,'20','58778965712','6','2023-01-01',NULL),(11,'20','58778965712','12','2023-01-01','888'),(12,'17','48785595621','14','2023-01-01','777'),(13,'12','01342850181','65','2023-01-01','666');
/*!40000 ALTER TABLE `saida_beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nis` char(15) NOT NULL,
  `cns` char(15) NOT NULL,
  `observacao` text,
  `situacao_trabalho` varchar(45) DEFAULT NULL,
  `situacao_trabalho_outros` varchar(45) DEFAULT NULL,
  `tipo_transporte` varchar(50) DEFAULT NULL,
  `tipo_tratamento` varchar(45) DEFAULT NULL,
  `beneficio` varchar(50) DEFAULT NULL,
  `local_tratamento` varchar(45) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `patologia_base` varchar(45) DEFAULT NULL,
  `outras_patologias` varchar(45) DEFAULT NULL,
  `tarifa_social` varchar(45) DEFAULT NULL,
  `media_renda_familiar` varchar(45) DEFAULT NULL,
  `vale_transporte` varchar(45) DEFAULT NULL,
  `id_matricula` int DEFAULT NULL,
  `id_cuidador` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'4762374','47623472','OBS','Aposentado invalidez','','Carona','Hemodiálise','BPC/PCD','2','Matutino','2023-09-25','Diabete 1','','NÃO','1 salário','Passe livre',2,1),(3,'763652','63746','OBS','Aposentado tempo de serviço','None','Carona','Pré-Diálise','BPC/PCD','001-ClinicaRoot','Vespertino','2023-09-25','Diabete 1','None','NÃO','1 salário','Passe para os dias de tratamento',6,NULL),(4,'8962659','12849333','OBS','Aposentado por Idade','','Carona','Pré-Diálise','Auxílio Brasil (Gov. Federal)','3','Noturno','2023-09-28','Outros','Outross','SIM','Mais que 3 salários','Passe para os dias de tratamento',8,2),(5,'859699','5555888','OBS','Aposentado por Idade','','Particular','Pré-Diálise','BPC/Idoso','1','Matutino','2000-01-01','Hipertensão','','SIM','Menos 1 salário','Passe para os dias de tratamento',10,NULL),(6,'532653','3526531','OBS','Pensionista','None','Ônibus coletivo','Pré-Diálise','BPC/PCD','1','Vespertino','2023-09-28','Hipertensão','None','NÃO','Mais de 1 a 3 salários','Passe do idoso',11,NULL),(7,'23232323','23232323','OBS','Aposentado por Idade','','Particular','Pré-Diálise','BPC/PCD','1','Matutino','2023-10-03','Hipertensão','','NÃO','Menos 1 salário','Passe para os dias de tratamento',12,NULL),(8,'3434324','5656546546','OBS','Aposentado invalidez','','Carona','Hemodiálise','BPC/PCD','3','Noturno','2023-10-02','Diabete 2','','NÃO','Mais de 1 a 3 salários','Passe para os dias de tratamento',13,NULL),(9,'454534556','45656546','OBS','Aposentado invalidez','','Carona','Diálise Peritoneal','Mais Social (Gov. Estadual)','2','Matutino','2023-10-03','Diabete 1','','NÃO','1 salário','Passe do idoso',14,3),(10,'4353435435','43545654654','OBS','Aposentado tempo de serviço','','Particular','Pré-Diálise','BPC/PCD','2','Vespertino','2023-10-03','Diabete 2','','NÃO','Mais de 1 a 3 salários','Passe para os dias de tratamento',17,NULL),(11,'642783','476238','OBS','Aposentado por Idade','','Ônibus coletivo','Hemodiálise','BPC/PCD','2','Vespertino','2023-10-03','Hipertensão','','SIM','Mais de 1 a 3 salários','Passe do idoso',18,NULL),(12,'2344','23442','OBS','Aposentado tempo de serviço','','Ônibus coletivo','Prevenção','BPC/PCD','2','Noturno','2023-10-06','Diabete 1','','NÃO','1 salário','Passe do idoso',19,NULL),(13,'5565468623','5686532323','OBS','Aposentado invalidez','None','Particular','Transplantado/a','BPC/PCD','Selecione','Vespertino','2023-04-14','Lúpus','None','NÃO','1 salário','Passe do idoso',20,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-17 21:37:39
