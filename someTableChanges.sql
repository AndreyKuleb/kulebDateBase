SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `perftest2`.`user` 
CHANGE COLUMN `isAnonymous` `isAnonymous` TINYINT(1) NOT NULL DEFAULT False ;

ALTER TABLE `perftest2`.`post` 
CHANGE COLUMN `isApproved` `isApproved` TINYINT(1) NOT NULL DEFAULT false ,
CHANGE COLUMN `isDeleted` `isDeleted` TINYINT(1) NOT NULL DEFAULT false ,
CHANGE COLUMN `isEdited` `isEdited` TINYINT(1) NOT NULL DEFAULT false ,
CHANGE COLUMN `isHighlighted` `isHighlighted` TINYINT(1) NOT NULL DEFAULT true ,
CHANGE COLUMN `isSpam` `isSpam` TINYINT(1) NOT NULL DEFAULT false ,
ADD INDEX `forumShort-date` (`forumShortname` ASC, `date` ASC),
ADD INDEX `userEmail-date` (`userEmail` ASC, `date` ASC),
ADD INDEX `threadid-date-materPath` (`threadId` ASC, `date` ASC, `materPath` ASC);

ALTER TABLE `perftest2`.`thread` 
ADD INDEX `forumSh-date` (`forumShortname` ASC, `date` ASC),
ADD INDEX `user-date` (`userEmail` ASC, `date` ASC);

ALTER TABLE `perftest2`.`followers` 
DROP COLUMN `id`,
ADD INDEX `index2` (`followeeEmail` ASC),
DROP INDEX `id_UNIQUE` ;

ALTER TABLE `perftest2`.`subscribes` 
DROP COLUMN `id`,
ADD INDEX `index2` (`userEmail` ASC),
DROP INDEX `id_UNIQUE` ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;