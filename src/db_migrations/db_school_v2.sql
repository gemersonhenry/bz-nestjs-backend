-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'tb_students'
-- 
-- ---

DROP TABLE IF EXISTS `tb_students`;
		
CREATE TABLE `tb_students` (
  `id_student` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `code_student` VARCHAR NULL DEFAULT NULL,
  `id_person` INTEGER NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_student`)
);

-- ---
-- Table 'tb_teachers'
-- 
-- ---

DROP TABLE IF EXISTS `tb_teachers`;
		
CREATE TABLE `tb_teachers` (
  `id_teacher` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `code_teacher` VARCHAR NULL DEFAULT NULL,
  `id_person` INTEGER NULL DEFAULT NULL,
  `incorporation_date` DATE NULL DEFAULT NULL,
  `academic_specialty` VARCHAR NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_teacher`)
);

-- ---
-- Table 'tb_people'
-- 
-- ---

DROP TABLE IF EXISTS `tb_people`;
		
CREATE TABLE `tb_people` (
  `id_person` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dni_person` VARCHAR NULL DEFAULT NULL,
  `name_person` VARCHAR NULL DEFAULT NULL,
  `last_name_person` VARCHAR NULL DEFAULT NULL,
  `date_of_birth_person` DATE NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_person`)
);

-- ---
-- Table 'tb_parents'
-- 
-- ---

DROP TABLE IF EXISTS `tb_parents`;
		
CREATE TABLE `tb_parents` (
  `id_parent` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `code_parent` VARCHAR NULL DEFAULT NULL,
  `id_parent_type` INTEGER NULL DEFAULT NULL,
  `description` MEDIUMTEXT NULL DEFAULT NULL,
  `id_person` INTEGER NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_parent`)
);

-- ---
-- Table 'tb_parent_type'
-- 
-- ---

DROP TABLE IF EXISTS `tb_parent_type`;
		
CREATE TABLE `tb_parent_type` (
  `id_parent_type` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `parent_type` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_parent_type`)
);

-- ---
-- Table 'tb_sections'
-- 
-- ---

DROP TABLE IF EXISTS `tb_sections`;
		
CREATE TABLE `tb_sections` (
  `id_section` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `code_section` VARCHAR NULL DEFAULT NULL,
  `name_section` VARCHAR NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_section`)
);

-- ---
-- Table 'tb_courses'
-- 
-- ---

DROP TABLE IF EXISTS `tb_courses`;
		
CREATE TABLE `tb_courses` (
  `id_course` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `code_course` VARCHAR NULL DEFAULT NULL,
  `name_course` VARCHAR NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_course`)
);

-- ---
-- Table 'tb_sections_courses_teachers'
-- 
-- ---

DROP TABLE IF EXISTS `tb_sections_courses_teachers`;
		
CREATE TABLE `tb_sections_courses_teachers` (
  `id_section_course_teacher` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_teacher` INTEGER NULL DEFAULT NULL,
  `id_section_course` INTEGER NULL DEFAULT NULL,
  `academic_year` VARCHAR NULL DEFAULT NULL,
  `description` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_section_course_teacher`)
);

-- ---
-- Table 'tb_sections_teachers'
-- 
-- ---

DROP TABLE IF EXISTS `tb_sections_teachers`;
		
CREATE TABLE `tb_sections_teachers` (
  `id_section_teacher` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_teacher` INTEGER NULL DEFAULT NULL,
  `id_section` INTEGER NULL DEFAULT NULL,
  `academic_year` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id_section_teacher`)
);

-- ---
-- Table 'tb_sections_courses'
-- 
-- ---

DROP TABLE IF EXISTS `tb_sections_courses`;
		
CREATE TABLE `tb_sections_courses` (
  `id_section_course` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_course` INTEGER NULL DEFAULT NULL,
  `id_section` INTEGER NULL DEFAULT NULL,
  `academic_year` VARCHAR NULL DEFAULT NULL,
  `schedule` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id_section_course`)
);

-- ---
-- Table 'tb_students_grades'
-- 
-- ---

DROP TABLE IF EXISTS `tb_students_grades`;
		
CREATE TABLE `tb_students_grades` (
  `id_student_grade` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_student` INTEGER NULL DEFAULT NULL,
  `id_section_course` INTEGER NULL DEFAULT NULL,
  `id_grade_type` INTEGER NULL DEFAULT NULL,
  `grade` VARCHAR NULL DEFAULT NULL,
  `academic_year` VARCHAR NULL DEFAULT NULL,
  `registered_by` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id_student_grade`)
);

-- ---
-- Table 'tb_grade_types'
-- 
-- ---

DROP TABLE IF EXISTS `tb_grade_types`;
		
CREATE TABLE `tb_grade_types` (
  `id_grade_type` INTEGER NULL AUTO_INCREMENT DEFAULT NULL COMMENT 'Practica, Examen Mensual, Examen Bimestral, etc',
  `grade_type` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id_grade_type`)
);

-- ---
-- Table 'tb_assistants'
-- 
-- ---

DROP TABLE IF EXISTS `tb_assistants`;
		
CREATE TABLE `tb_assistants` (
  `id_assistants` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `code_assistant` VARCHAR NULL DEFAULT NULL,
  `id_person` INTEGER NULL DEFAULT NULL,
  `incorporation_date` DATE NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_assistants`)
);

-- ---
-- Table 'tb_sections_assistants'
-- 
-- ---

DROP TABLE IF EXISTS `tb_sections_assistants`;
		
CREATE TABLE `tb_sections_assistants` (
  `id_section_assistant` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_assistant` INTEGER NULL DEFAULT NULL,
  `id_section` INTEGER NULL DEFAULT NULL,
  `academic_year` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id_section_assistant`)
);

-- ---
-- Table 'tb_enrollments_dates'
-- 
-- ---

DROP TABLE IF EXISTS `tb_enrollments_dates`;
		
CREATE TABLE `tb_enrollments_dates` (
  `id_enrollment_date` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_student` INTEGER NULL DEFAULT NULL,
  `id_section` INTEGER NULL DEFAULT NULL,
  `academic_year` VARCHAR NULL DEFAULT NULL,
  `enrollment_date` DATETIME NULL DEFAULT NULL,
  `description` MEDIUMTEXT NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_enrollment_date`)
);

-- ---
-- Table 'tb_students_parents'
-- 
-- ---

DROP TABLE IF EXISTS `tb_students_parents`;
		
CREATE TABLE `tb_students_parents` (
  `id_student_parent` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_student` INTEGER NULL DEFAULT NULL,
  `id_parent` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_student_parent`)
);

-- ---
-- Table 'tb_school_staff'
-- 
-- ---

DROP TABLE IF EXISTS `tb_school_staff`;
		
CREATE TABLE `tb_school_staff` (
  `id_employee` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `code_employee` VARCHAR NULL DEFAULT NULL,
  `id_person` INTEGER NULL DEFAULT NULL,
  `incorporation_date` DATE NULL DEFAULT NULL,
  `description` MEDIUMTEXT NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id_employee`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `tb_students` ADD FOREIGN KEY (id_person) REFERENCES `tb_people` (`id_person`);
ALTER TABLE `tb_teachers` ADD FOREIGN KEY (id_person) REFERENCES `tb_people` (`id_person`);
ALTER TABLE `tb_parents` ADD FOREIGN KEY (id_parent_type) REFERENCES `tb_parent_type` (`id_parent_type`);
ALTER TABLE `tb_parents` ADD FOREIGN KEY (id_person) REFERENCES `tb_people` (`id_person`);
ALTER TABLE `tb_sections_courses_teachers` ADD FOREIGN KEY (id_teacher) REFERENCES `tb_teachers` (`id_teacher`);
ALTER TABLE `tb_sections_courses_teachers` ADD FOREIGN KEY (id_section_course) REFERENCES `tb_sections_courses` (`id_section_course`);
ALTER TABLE `tb_sections_teachers` ADD FOREIGN KEY (id_teacher) REFERENCES `tb_teachers` (`id_teacher`);
ALTER TABLE `tb_sections_teachers` ADD FOREIGN KEY (id_section) REFERENCES `tb_sections` (`id_section`);
ALTER TABLE `tb_sections_courses` ADD FOREIGN KEY (id_course) REFERENCES `tb_courses` (`id_course`);
ALTER TABLE `tb_sections_courses` ADD FOREIGN KEY (id_section) REFERENCES `tb_sections` (`id_section`);
ALTER TABLE `tb_students_grades` ADD FOREIGN KEY (id_student) REFERENCES `tb_students` (`id_student`);
ALTER TABLE `tb_students_grades` ADD FOREIGN KEY (id_section_course) REFERENCES `tb_sections_courses` (`id_section_course`);
ALTER TABLE `tb_students_grades` ADD FOREIGN KEY (id_grade_type) REFERENCES `tb_grade_types` (`id_grade_type`);
ALTER TABLE `tb_assistants` ADD FOREIGN KEY (id_person) REFERENCES `tb_people` (`id_person`);
ALTER TABLE `tb_sections_assistants` ADD FOREIGN KEY (id_assistant) REFERENCES `tb_assistants` (`id_assistants`);
ALTER TABLE `tb_sections_assistants` ADD FOREIGN KEY (id_section) REFERENCES `tb_sections` (`id_section`);
ALTER TABLE `tb_enrollments_dates` ADD FOREIGN KEY (id_student) REFERENCES `tb_students` (`id_student`);
ALTER TABLE `tb_enrollments_dates` ADD FOREIGN KEY (id_section) REFERENCES `tb_sections` (`id_section`);
ALTER TABLE `tb_students_parents` ADD FOREIGN KEY (id_student) REFERENCES `tb_students` (`id_student`);
ALTER TABLE `tb_students_parents` ADD FOREIGN KEY (id_parent) REFERENCES `tb_parents` (`id_parent`);
ALTER TABLE `tb_school_staff` ADD FOREIGN KEY (id_person) REFERENCES `tb_people` (`id_person`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `tb_students` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_teachers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_people` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_parents` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_parent_type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_sections` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_courses` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_sections_courses_teachers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_sections_teachers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_sections_courses` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_students_grades` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_grade_types` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_assistants` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_sections_assistants` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_enrollments_dates` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_students_parents` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_school_staff` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `tb_students` (`id_student`,`code_student`,`id_person`,`updated_at`,`created_at`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_teachers` (`id_teacher`,`code_teacher`,`id_person`,`incorporation_date`,`academic_specialty`,`updated_at`,`created_at`) VALUES
-- ('','','','','','','');
-- INSERT INTO `tb_people` (`id_person`,`dni_person`,`name_person`,`last_name_person`,`date_of_birth_person`,`updated_at`,`created_at`) VALUES
-- ('','','','','','','');
-- INSERT INTO `tb_parents` (`id_parent`,`code_parent`,`id_parent_type`,`description`,`id_person`,`updated_at`,`created_at`) VALUES
-- ('','','','','','','');
-- INSERT INTO `tb_parent_type` (`id_parent_type`,`parent_type`) VALUES
-- ('','');
-- INSERT INTO `tb_sections` (`id_section`,`code_section`,`name_section`,`updated_at`,`created_at`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_courses` (`id_course`,`code_course`,`name_course`,`updated_at`,`created_at`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_sections_courses_teachers` (`id_section_course_teacher`,`id_teacher`,`id_section_course`,`academic_year`,`description`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_sections_teachers` (`id_section_teacher`,`id_teacher`,`id_section`,`academic_year`) VALUES
-- ('','','','');
-- INSERT INTO `tb_sections_courses` (`id_section_course`,`id_course`,`id_section`,`academic_year`,`schedule`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_students_grades` (`id_student_grade`,`id_student`,`id_section_course`,`id_grade_type`,`grade`,`academic_year`,`registered_by`) VALUES
-- ('','','','','','','');
-- INSERT INTO `tb_grade_types` (`id_grade_type`,`grade_type`) VALUES
-- ('','');
-- INSERT INTO `tb_assistants` (`id_assistants`,`code_assistant`,`id_person`,`incorporation_date`,`updated_at`,`created_at`) VALUES
-- ('','','','','','');
-- INSERT INTO `tb_sections_assistants` (`id_section_assistant`,`id_assistant`,`id_section`,`academic_year`) VALUES
-- ('','','','');
-- INSERT INTO `tb_enrollments_dates` (`id_enrollment_date`,`id_student`,`id_section`,`academic_year`,`enrollment_date`,`description`,`updated_at`,`created_at`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `tb_students_parents` (`id_student_parent`,`id_student`,`id_parent`) VALUES
-- ('','','');
-- INSERT INTO `tb_school_staff` (`id_employee`,`code_employee`,`id_person`,`incorporation_date`,`description`,`updated_at`,`created_at`) VALUES
-- ('','','','','','','');