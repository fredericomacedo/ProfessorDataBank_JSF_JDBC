-- ----------------------------------------------------------------
-- Create Schema and User
--
-- Uncomment following statements only if you did NOT use the 'prelab-databank.sql'
--   file during your MySQL Setup.  You MUST be logged in as MySQL superuser
--   account 'root@'localhost' for these statements to work:
-- DROP SCHEMA IF EXISTS `databank`;
-- CREATE SCHEMA IF NOT EXISTS `databank` DEFAULT CHARACTER SET utf8mb4;
-- DROP USER IF EXISTS `cst8277`@`localhost`;
-- CREATE USER IF NOT EXISTS 'cst8277'@'localhost' IDENTIFIED BY '8277';
-- GRANT ALL ON `databank`.* TO 'cst8277'@'localhost';
--
-- ----------------------------------------------------------------

-- -----------------------------------------------------
-- Create Table `databank`.`professor`
-- -----------------------------------------------------
USE `databank`;
CREATE TABLE IF NOT EXISTS `databank`.`professor`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(50) NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NULL,
  `phone` VARCHAR(10) NULL,
  `degree` VARCHAR(45) NULL,
  `major` VARCHAR(45) NULL,
  `created` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `databank`.`degree`(
  `name` VARCHAR(45) NULL)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `databank`.`major`(
  `name` VARCHAR(45) NULL)
ENGINE = InnoDB;

INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Applied Science');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Arts');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Education');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Engineering');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Fine Arts');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Liberal Arts and Sciences');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Library Science');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Philosophy');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Professional Studies');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Science');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Science And Arts');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Bachelor of Technology');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Arts');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Education');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Engineering');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Fine Arts');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Library Science');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Liberal Arts');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Library and Information Science');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Professional Studies');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Science');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Master of Technology');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Doctor of Education');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Doctor of Engineering');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Doctor of Jurisprudence (Juris Doctor)');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Doctor of Medicine');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Doctor of Philosophy');
INSERT INTO `databank`.`degree`(`name`) VALUES ('Doctor of Science');

INSERT INTO `databank`.`major`(`name`) VALUES ('Accounting');
INSERT INTO `databank`.`major`(`name`) VALUES ('Advertising');
INSERT INTO `databank`.`major`(`name`) VALUES ('Agribusiness');
INSERT INTO `databank`.`major`(`name`) VALUES ('Agriculture');
INSERT INTO `databank`.`major`(`name`) VALUES ('Agronomy & Plant Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('American Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Animal Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Anthropological Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Anthropology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Aquaculture & Fisheries');
INSERT INTO `databank`.`major`(`name`) VALUES ('Architecture');
INSERT INTO `databank`.`major`(`name`) VALUES ('Art History & Theory');
INSERT INTO `databank`.`major`(`name`) VALUES ('Asian Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Astronomy');
INSERT INTO `databank`.`major`(`name`) VALUES ('Aviation');
INSERT INTO `databank`.`major`(`name`) VALUES ('Aviation Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Biblical Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Biochemistry');
INSERT INTO `databank`.`major`(`name`) VALUES ('Bioinformatics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Biology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Biomedical Engineering');
INSERT INTO `databank`.`major`(`name`) VALUES ('Biomedical Sciences');
INSERT INTO `databank`.`major`(`name`) VALUES ('Biotechnology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Botany');
INSERT INTO `databank`.`major`(`name`) VALUES ('Chemical & Process Engineering');
INSERT INTO `databank`.`major`(`name`) VALUES ('Chemistry');
INSERT INTO `databank`.`major`(`name`) VALUES ('Chinese');
INSERT INTO `databank`.`major`(`name`) VALUES ('Chinese Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Christian Thought & History');
INSERT INTO `databank`.`major`(`name`) VALUES ('Civil Engineering');
INSERT INTO `databank`.`major`(`name`) VALUES ('Classical Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Clothing & Textiles');
INSERT INTO `databank`.`major`(`name`) VALUES ('Commercial Law');
INSERT INTO `databank`.`major`(`name`) VALUES ('Communication & Professional Writing');
INSERT INTO `databank`.`major`(`name`) VALUES ('Computer Engineering');
INSERT INTO `databank`.`major`(`name`) VALUES ('Computer Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Conflict Resolution');
INSERT INTO `databank`.`major`(`name`) VALUES ('Construction & Project Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Counselling');
INSERT INTO `databank`.`major`(`name`) VALUES ('Creative Writing');
INSERT INTO `databank`.`major`(`name`) VALUES ('Criminology & Justice');
INSERT INTO `databank`.`major`(`name`) VALUES ('Cultural Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Dance');
INSERT INTO `databank`.`major`(`name`) VALUES ('Defence Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Dental Technology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Dentistry');
INSERT INTO `databank`.`major`(`name`) VALUES ('Design');
INSERT INTO `databank`.`major`(`name`) VALUES ('Drama / Theatre Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Earth Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Ecology');
INSERT INTO `databank`.`major`(`name`) VALUES ('e-Commerce');
INSERT INTO `databank`.`major`(`name`) VALUES ('Economics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Education Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Electrical Engineering');
INSERT INTO `databank`.`major`(`name`) VALUES ('Electronics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Energy Studies & Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Engineering Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('English');
INSERT INTO `databank`.`major`(`name`) VALUES ('English as a Second Language');
INSERT INTO `databank`.`major`(`name`) VALUES ('Entrepreneurship');
INSERT INTO `databank`.`major`(`name`) VALUES ('Environmental & Natural Resources Engineering');
INSERT INTO `databank`.`major`(`name`) VALUES ('Environmental Health');
INSERT INTO `databank`.`major`(`name`) VALUES ('Environmental Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Environmental Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Ethics');
INSERT INTO `databank`.`major`(`name`) VALUES ('European Languages & Cultures');
INSERT INTO `databank`.`major`(`name`) VALUES ('European Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Fashion Design');
INSERT INTO `databank`.`major`(`name`) VALUES ('Film & Media Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Film-making');
INSERT INTO `databank`.`major`(`name`) VALUES ('Finance');
INSERT INTO `databank`.`major`(`name`) VALUES ('Fine Arts');
INSERT INTO `databank`.`major`(`name`) VALUES ('Food Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Forensic Analytical Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Forestry');
INSERT INTO `databank`.`major`(`name`) VALUES ('French');
INSERT INTO `databank`.`major`(`name`) VALUES ('Gender Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Genetics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Geography');
INSERT INTO `databank`.`major`(`name`) VALUES ('Geology');
INSERT INTO `databank`.`major`(`name`) VALUES ('German');
INSERT INTO `databank`.`major`(`name`) VALUES ('Graphic Design');
INSERT INTO `databank`.`major`(`name`) VALUES ('Greek');
INSERT INTO `databank`.`major`(`name`) VALUES ('Health Promotion');
INSERT INTO `databank`.`major`(`name`) VALUES ('History');
INSERT INTO `databank`.`major`(`name`) VALUES ('Hospitality Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Human Development Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Human Nutrition');
INSERT INTO `databank`.`major`(`name`) VALUES ('Human Resource Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Information Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('International Business');
INSERT INTO `databank`.`major`(`name`) VALUES ('International Relations');
INSERT INTO `databank`.`major`(`name`) VALUES ('International Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Interpreting & Translating');
INSERT INTO `databank`.`major`(`name`) VALUES ('Italian');
INSERT INTO `databank`.`major`(`name`) VALUES ('Japanese');
INSERT INTO `databank`.`major`(`name`) VALUES ('Japanese Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Journalism');
INSERT INTO `databank`.`major`(`name`) VALUES ('Korean');
INSERT INTO `databank`.`major`(`name`) VALUES ('Labour & Industrial Relations');
INSERT INTO `databank`.`major`(`name`) VALUES ('Land Use Planning & Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Latin');
INSERT INTO `databank`.`major`(`name`) VALUES ('Law');
INSERT INTO `databank`.`major`(`name`) VALUES ('Linguistics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Māori Development');
INSERT INTO `databank`.`major`(`name`) VALUES ('Māori Health');
INSERT INTO `databank`.`major`(`name`) VALUES ('Māori Language');
INSERT INTO `databank`.`major`(`name`) VALUES ('Māori Media Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Māori Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Māori Visual Arts');
INSERT INTO `databank`.`major`(`name`) VALUES ('Marine Biology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Marine Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Maritime Engineering');
INSERT INTO `databank`.`major`(`name`) VALUES ('Marketing');
INSERT INTO `databank`.`major`(`name`) VALUES ('Mathematics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Mechanical Engineering');
INSERT INTO `databank`.`major`(`name`) VALUES ('Mechatronics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Medical Laboratory Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Medicine');
INSERT INTO `databank`.`major`(`name`) VALUES ('Microbiology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Midwifery');
INSERT INTO `databank`.`major`(`name`) VALUES ('Music Composition');
INSERT INTO `databank`.`major`(`name`) VALUES ('Music Performance');
INSERT INTO `databank`.`major`(`name`) VALUES ('Music Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Nanoscience');
INSERT INTO `databank`.`major`(`name`) VALUES ('Neuroscience');
INSERT INTO `databank`.`major`(`name`) VALUES ('New Zealand Sign Language');
INSERT INTO `databank`.`major`(`name`) VALUES ('Nursing');
INSERT INTO `databank`.`major`(`name`) VALUES ('Occupational Therapy & Rehabilitation');
INSERT INTO `databank`.`major`(`name`) VALUES ('Optometry');
INSERT INTO `databank`.`major`(`name`) VALUES ('Oral Health');
INSERT INTO `databank`.`major`(`name`) VALUES ('Pacific Island Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Paramedicine');
INSERT INTO `databank`.`major`(`name`) VALUES ('Pastoral Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Pharmacology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Pharmacy');
INSERT INTO `databank`.`major`(`name`) VALUES ('Philosophy');
INSERT INTO `databank`.`major`(`name`) VALUES ('Photography');
INSERT INTO `databank`.`major`(`name`) VALUES ('Physics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Physiology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Physiotherapy');
INSERT INTO `databank`.`major`(`name`) VALUES ('Podiatry');
INSERT INTO `databank`.`major`(`name`) VALUES ('Political Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Population & Development Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Population Health');
INSERT INTO `databank`.`major`(`name`) VALUES ('Product & Industrial Design');
INSERT INTO `databank`.`major`(`name`) VALUES ('Psychology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Public Policy');
INSERT INTO `databank`.`major`(`name`) VALUES ('Public Relations');
INSERT INTO `databank`.`major`(`name`) VALUES ('Quantity Surveying');
INSERT INTO `databank`.`major`(`name`) VALUES ('Radiation Therapy');
INSERT INTO `databank`.`major`(`name`) VALUES ('Radio, TV & Studio Production');
INSERT INTO `databank`.`major`(`name`) VALUES ('Religious Studies');
INSERT INTO `databank`.`major`(`name`) VALUES ('Russian');
INSERT INTO `databank`.`major`(`name`) VALUES ('Samoan Studies / Fa''asamoa');
INSERT INTO `databank`.`major`(`name`) VALUES ('Social Policy');
INSERT INTO `databank`.`major`(`name`) VALUES ('Social Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Social Work');
INSERT INTO `databank`.`major`(`name`) VALUES ('Sociology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Spanish');
INSERT INTO `databank`.`major`(`name`) VALUES ('Speech & Language Therapy');
INSERT INTO `databank`.`major`(`name`) VALUES ('Sport & Exercise Science');
INSERT INTO `databank`.`major`(`name`) VALUES ('Sport & Leisure Studies & Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Sport Coaching');
INSERT INTO `databank`.`major`(`name`) VALUES ('Statistics');
INSERT INTO `databank`.`major`(`name`) VALUES ('Supply Chain Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Surveying');
INSERT INTO `databank`.`major`(`name`) VALUES ('Taxation');
INSERT INTO `databank`.`major`(`name`) VALUES ('Teaching – Early Childhood');
INSERT INTO `databank`.`major`(`name`) VALUES ('Teaching – Māori Language');
INSERT INTO `databank`.`major`(`name`) VALUES ('Teaching – Physical Education');
INSERT INTO `databank`.`major`(`name`) VALUES ('Teaching – Primary');
INSERT INTO `databank`.`major`(`name`) VALUES ('Teaching – Secondary');
INSERT INTO `databank`.`major`(`name`) VALUES ('Teaching – Technology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Theology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Tourism');
INSERT INTO `databank`.`major`(`name`) VALUES ('Valuation & Property Management');
INSERT INTO `databank`.`major`(`name`) VALUES ('Veterinary Science & Technology');
INSERT INTO `databank`.`major`(`name`) VALUES ('Web & Digital Design');
INSERT INTO `databank`.`major`(`name`) VALUES ('Zoology');
