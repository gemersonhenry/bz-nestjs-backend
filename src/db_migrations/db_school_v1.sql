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
-- Table 'tb_parents_students'
-- 
-- ---

DROP TABLE IF EXISTS `tb_parents_students`;
		
CREATE TABLE `tb_parents_students` (
  `id_parent_student` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_student` INTEGER NULL DEFAULT NULL,
  `id_parent` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_parent_student`)
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
-- Table 'tb_teachers_courses'
-- 
-- ---

DROP TABLE IF EXISTS `tb_teachers_courses`;
		
CREATE TABLE `tb_teachers_courses` (
  `id_teacher_course` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_teacher` INTEGER NULL DEFAULT NULL,
  `id_course` INTEGER NULL DEFAULT NULL,
  `current_year` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_teacher_course`)
);

-- ---
-- Table 'tb_students_sections'
-- 
-- ---

DROP TABLE IF EXISTS `tb_students_sections`;
		
CREATE TABLE `tb_students_sections` (
  `id_student_section` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_student` INTEGER NULL DEFAULT NULL,
  `id_section` INTEGER NULL DEFAULT NULL,
  `current_year` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_student_section`)
);

-- ---
-- Table 'tb_teachers_sections'
-- 
-- ---

DROP TABLE IF EXISTS `tb_teachers_sections`;
		
CREATE TABLE `tb_teachers_sections` (
  `id_teacher_section` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_teacher` INTEGER NULL DEFAULT NULL,
  `id_section` INTEGER NULL DEFAULT NULL,
  `current_year` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_teacher_section`)
);

-- ---
-- Table 'tb_courses_sections'
-- 
-- ---

DROP TABLE IF EXISTS `tb_courses_sections`;
		
CREATE TABLE `tb_courses_sections` (
  `id_course_section` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_course` INTEGER NULL DEFAULT NULL,
  `id_section` INTEGER NULL DEFAULT NULL,
  `current_year` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_course_section`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `tb_students` ADD FOREIGN KEY (id_person) REFERENCES `tb_people` (`id_person`);
ALTER TABLE `tb_teachers` ADD FOREIGN KEY (id_person) REFERENCES `tb_people` (`id_person`);
ALTER TABLE `tb_parents` ADD FOREIGN KEY (id_parent_type) REFERENCES `tb_parent_type` (`id_parent_type`);
ALTER TABLE `tb_parents` ADD FOREIGN KEY (id_person) REFERENCES `tb_people` (`id_person`);
ALTER TABLE `tb_parents_students` ADD FOREIGN KEY (id_student) REFERENCES `tb_students` (`id_student`);
ALTER TABLE `tb_parents_students` ADD FOREIGN KEY (id_parent) REFERENCES `tb_parents` (`id_parent`);
ALTER TABLE `tb_teachers_courses` ADD FOREIGN KEY (id_teacher) REFERENCES `tb_teachers` (`id_teacher`);
ALTER TABLE `tb_teachers_courses` ADD FOREIGN KEY (id_course) REFERENCES `tb_courses` (`id_course`);
ALTER TABLE `tb_students_sections` ADD FOREIGN KEY (id_student) REFERENCES `tb_students` (`id_student`);
ALTER TABLE `tb_students_sections` ADD FOREIGN KEY (id_section) REFERENCES `tb_sections` (`id_section`);
ALTER TABLE `tb_teachers_sections` ADD FOREIGN KEY (id_teacher) REFERENCES `tb_teachers` (`id_teacher`);
ALTER TABLE `tb_teachers_sections` ADD FOREIGN KEY (id_section) REFERENCES `tb_sections` (`id_section`);
ALTER TABLE `tb_courses_sections` ADD FOREIGN KEY (id_course) REFERENCES `tb_courses` (`id_course`);
ALTER TABLE `tb_courses_sections` ADD FOREIGN KEY (id_section) REFERENCES `tb_sections` (`id_section`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `tb_students` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_teachers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_people` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_parents` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_parents_students` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_parent_type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_sections` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_courses` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_teachers_courses` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_students_sections` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_teachers_sections` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `tb_courses_sections` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `tb_students` (`id_student`,`code_student`,`id_person`,`updated_at`,`created_at`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_teachers` (`id_teacher`,`code_teacher`,`id_person`,`updated_at`,`created_at`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_people` (`id_person`,`dni_person`,`name_person`,`last_name_person`,`date_of_birth_person`,`updated_at`,`created_at`) VALUES
-- ('','','','','','','');
-- INSERT INTO `tb_parents` (`id_parent`,`code_parent`,`id_parent_type`,`description`,`id_person`,`updated_at`,`created_at`) VALUES
-- ('','','','','','','');
-- INSERT INTO `tb_parents_students` (`id_parent_student`,`id_student`,`id_parent`) VALUES
-- ('','','');
-- INSERT INTO `tb_parent_type` (`id_parent_type`,`parent_type`) VALUES
-- ('','');
-- INSERT INTO `tb_sections` (`id_section`,`code_section`,`name_section`,`updated_at`,`created_at`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_courses` (`id_course`,`code_course`,`name_course`,`updated_at`,`created_at`) VALUES
-- ('','','','','');
-- INSERT INTO `tb_teachers_courses` (`id_teacher_course`,`id_teacher`,`id_course`,`current_year`) VALUES
-- ('','','','');
-- INSERT INTO `tb_students_sections` (`id_student_section`,`id_student`,`id_section`,`current_year`) VALUES
-- ('','','','');
-- INSERT INTO `tb_teachers_sections` (`id_teacher_section`,`id_teacher`,`id_section`,`current_year`) VALUES
-- ('','','','');
-- INSERT INTO `tb_courses_sections` (`id_course_section`,`id_course`,`id_section`,`current_year`) VALUES
-- ('','','','');