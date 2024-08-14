CREATE TABLE companies (
  id INT NOT NULL AUTO_INCREMENT,
  industry_id INT,
  region_id INT,
  company_name varchar(100) NOT NULL,
  storage_name varchar(100) NOT NULL,
  tell varchar(100) NOT NULL,
  storage INT NOT NULL,
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  create_acc INT,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  update_acc INT,
  PRIMARY KEY (id)
) COMMENT='会社情報';

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  company_id INT NOT NULL,
  department_id INT NOT NULL COMMENT '複数グループ所属の場合はメインの所属グループ。(ストレージの使用制限に関連)',
  personal_id VARCHAR(50) NOT NULL UNIQUE,
  user_name VARCHAR(50) NOT NULL,
  name_kana VARCHAR(100),
  email VARCHAR(100),
  password VARCHAR(100),
  salt VARCHAR(100) NOT NULL,
  age DATE,
  sex  VARCHAR(100) COMMENT '男 or 女',
  storage INT NOT NULL,
  permission BOOLEAN NOT NULL COMMENT 'アクセス権限やアカウントの追加が可能',
  admin BOOLEAN NOT NULL COMMENT 'Walls社員専用。システムすべてのアクセス権限と機能が使える。',
  icon VARCHAR(500),
  delete_flg BOOLEAN NOT NULL DEFAULT FALSE COMMENT '削除済み=1',
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  memo VARCHAR(800),
  PRIMARY KEY (id)
) COMMENT='従業員情報';

CREATE TABLE cd_directories (
  id INT NOT NULL AUTO_INCREMENT,
  company_id INT NOT NULL,
  directory_name VARCHAR(100),
  delete_flg BOOLEAN NOT NULL DEFAULT FALSE COMMENT '削除済み=1',
  path VARCHAR(1000),
  directory_class INT NOT NULL,
  open_flg BOOLEAN NOT NULL COMMENT '公開=0 非公開=1',
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  create_acc INT NOT NULL,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  update_acc INT,
  PRIMARY KEY (id)
) COMMENT='ファイルの保管場所';

CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  company_id INT NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  storage INT NOT NULL,
  memo VARCHAR(500),
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  create_acc INT,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  update_acc INT,
  PRIMARY KEY (id)
) COMMENT='会社の部署、グループ';

CREATE TABLE assignments (
  id INT NOT NULL AUTO_INCREMENT,
  department_id INT NOT NULL,
  user_id INT NOT NULL,
  delete_flg BOOLEAN NOT NULL DEFAULT FALSE COMMENT '削除済み=1',
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  create_acc INT NOT NULL,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  update_acc INT,
  PRIMARY KEY (id)
) COMMENT='グループの所属情報';

CREATE TABLE cd_permissions (
  id INT NOT NULL AUTO_INCREMENT,
  directory_id INT NOT NULL,
  user_id INT NOT NULL,
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  create_acc INT NOT NULL,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  update_acc INT,
  PRIMARY KEY (id)
) COMMENT='ディレクトリへのアクセス権限';

CREATE TABLE cd_files (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  directory_id INT COMMENT 'ファイルの保管場所',
  filetype_id INT COMMENT '拡張子',
  file_name VARCHAR(255) NOT NULL,
  file_size FLOAT NOT NULL COMMENT 'KB表記',
  delete_flg BOOLEAN NOT NULL DEFAULT FALSE COMMENT '削除済み=1',
  file_update_at DATETIME NOT NULL,
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  create_acc INT NOT NULL,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  update_acc INT,
  PRIMARY KEY (id)
) COMMENT='保存されたファイル名の情報';

CREATE TABLE cd_favorites (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  directory_id INT NOT NULL,
  favorite_name VARCHAR(400) NOT NULL,
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) COMMENT='ユーザーのお気に入り追加用';

CREATE TABLE filetypes (
  id INT NOT NULL AUTO_INCREMENT,
  extension VARCHAR(5) NOT NULL,
  extension_name VARCHAR(50) NOT NULL,
  icon INT,
  PRIMARY KEY (id)
) COMMENT='ファイル種別の情報';

CREATE TABLE regions (
  id INT NOT NULL AUTO_INCREMENT,
  country VARCHAR(50) NOT NULL,
  country_code VARCHAR(6) NOT NULL COMMENT 'JP,US,UK,などを入れる',
  region VARCHAR(100) NOT NULL COMMENT '都道府県',
  region_code VARCHAR(6) NOT NULL,
  PRIMARY KEY (id)
) COMMENT='基本的には都道府県情報を入れる';

CREATE TABLE industries	 (
  id INT NOT NULL AUTO_INCREMENT,
  industry_code	VARCHAR(2) NOT NULL,
  industry_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
) COMMENT='業種名';