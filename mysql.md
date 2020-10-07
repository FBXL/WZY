##MySQL库与表

###数据库名 : ssmbuild


###表名 : admin book
#####admin:
    CREATE TABLE `admin` (
      `id` int(2) NOT NULL AUTO_INCREMENT,
      `name` varchar(20) NOT NULL,
      `password` varchar(20) NOT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8
    
####book:
    CREATE TABLE `book` (
    `bookId` int(10) NOT NULL AUTO_INCREMENT,
    `bookName` varchar(100) NOT NULL,
    `bookCounts` int(11) NOT NULL,
    `detail` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`bookId`)
    ) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8
