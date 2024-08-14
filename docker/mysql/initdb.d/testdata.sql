INSERT INTO companies (industry_id, region_id, company_name, storage_name, tell, storage, create_acc, update_acc) VALUES (7, 21, '株式会社Walls', 'walls', '62-6011-6780', 1048576, 1, 1);
INSERT INTO companies (industry_id, region_id, company_name, storage_name, tell, storage, create_acc, update_acc) VALUES (7, 21, '神谷通信株式会社', 'kamiya', '49-8273-8496', 1048576, 1, 1);
INSERT INTO companies (industry_id, region_id, company_name, storage_name, tell, storage, create_acc, update_acc) VALUES (7, 21, '株式会社松本', 'matsumoto', '49-8273-4456', 1048576, 1, 1);
INSERT INTO companies (industry_id, region_id, company_name, storage_name, tell, storage, create_acc, update_acc) VALUES (7, 21, '株式会社山田', 'yamada', '49-8273-8144', 1048576, 1, 1);
INSERT INTO companies (industry_id, region_id, company_name, storage_name, tell, storage, create_acc, update_acc) VALUES (7, 23, '株式会社1042', 'test123456', '070-9825-9639', 1048576, 1, 1);

INSERT INTO users (company_id, department_id, personal_id, user_name, name_kana, email, password, salt, age, sex, storage, permission, admin, icon, delete_flg, memo) VALUES (1, 1, 'testid', '伊藤 真綾', 'いとう まあや', 'i.maaya@gmail.com', 'MS&z6w*R1ZH^', '6b9ed86d4f3ada379e70a7360fcebd58', '1988-08-08', '女', 810, False, True, 'https://placeimg.com/392/714/any', 0, '岐阜出身');
INSERT INTO users (company_id, department_id, personal_id, user_name, name_kana, email, password, salt, age, sex, storage, permission, admin, icon, delete_flg, memo) VALUES (2, 2, 'testid2', '佐藤 太郎', 'さとう 太郎', 's.taro@gmail.com', 'MS&z6w*TTb5^', '6b9ed86d4f3ada379e70a7360fceb553', '1990-08-08', '男', 810, False, False, 'https://placeimg.com/392/715/any', 0, '愛知出身');
INSERT INTO users (company_id, department_id, personal_id, user_name, name_kana, email, password, salt, age, sex, storage, permission, admin, icon, delete_flg, memo) VALUES (3, 3, 'testid3', '田中 花子', 'たなか はなこ', 't.hanako@gmail.com', 'MS&z6w*TTb5^', '6b9ed86d4f3ada379e70a7360fceb553', '1992-08-08', '女', 810, False, False, 'https://placeimg.com/392/716/any', 0, '三重出身');
INSERT INTO users (company_id, department_id, personal_id, user_name, name_kana, email, password, salt, age, sex, storage, permission, admin, icon, delete_flg, memo) VALUES (4, 4, 'testid4', '山田 太郎', 'やまだ たろう', 'y.taro@gmail.com', 'MS&z6w*TTb5^', '6b9ed86d4f3ada379e70a7360fceb553', '1994-08-08', '男', 810, False, False, 'https://placeimg.com/392/717/any', 0, '東京都出身');
INSERT INTO users (company_id, department_id, personal_id, user_name, name_kana, email, password, salt, age, sex, storage, permission, admin, icon, delete_flg, memo) VALUES (5, 5, 'testid5', '鈴木 花子', 'すずき はなこ', 's.hanako@gmail.com', 'MS&z6w*TTb5^', '6b9ed86d4f3ada379e70a7360fceb553', '1996-08-08', '女', 810, False, False, 'https://placeimg.com/392/718/any', 0, '大阪出身');

INSERT INTO cd_directories (company_id, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES (1, 0, False, False, 2, 2);
INSERT INTO cd_directories (company_id, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES (2, 0, False, False, 2, 2);

INSERT INTO cd_directories (company_id, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES (1, 'Walls', 1, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/', '01_人事管理', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/01_人事管理/', '01_雇用契約', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/01_人事管理/', '02_給与', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/01_人事管理/', '03_福利厚生', 3, True, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/01_人事管理/', '04_人事評価', 3, True, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/01_人事管理/', '05_勤怠管理', 3, False, True, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/', '02_経理', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/02_経理/', '01_会社帳簿', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/02_経理/', '02_請求書', 3, True, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/02_経理/', '03_支払い記録', 3, False, True, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/02_経理/', '04_税務関連', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/', '03_営業', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/03_営業/', '01_見積依頼', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/03_営業/', '02_契約書', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/03_営業/', '03_打合せ', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/03_営業/', '04_成果物', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/', '04_プロジェクト管理', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/04_プロジェクト管理/', '01_プロジェクト計画', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/04_プロジェクト管理/', '02_進捗管理', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/04_プロジェクト管理/', '03_タスクリスト', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls/04_プロジェクト管理/', '04_リソース管理', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES (1, 'Walls Dev', 1, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/', '01_プロジェクト', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/01_プロジェクト/', '01_勤怠管理システム', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/01_プロジェクト/', '02_e-ラーニング販売システム', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/01_プロジェクト/', '03_ホームページ作成', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/01_プロジェクト/', '04_ファイル共有システム', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/', '02_要件定義', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/02_要件定義/', '01_要件定義書', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/02_要件定義/', '02_設計', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/02_要件定義/', '03_コーディング', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/02_要件定義/', '04_テスト', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/02_要件定義/', '05_デプロイ', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/', '03_設計書', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/03_設計書/', '01_システム設計', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/03_設計書/', '02_アーキテクチャ', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/03_設計書/', '03_データベース設計', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/03_設計書/', '04_基本設計', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/03_設計書/', '05_詳細設計', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/', '04_コーディング', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/', '01_コードベース', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/', '02_ソースコード', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/', '03_テストコード', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/', '04_ライブラリ', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/', '05_バージョン管理', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/', '06_テスト', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/06_テスト/', '01_単体テスト', 4, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/06_テスト/', '02_結合テスト', 4, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/06_テスト/', '03_自動化テスト', 4, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/06_テスト/', '04_運用単体テスト', 4, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_コーディング/', '07_デプロイ', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/', '05_ツール', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/05_ツール/', '01_開発ツール', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/05_ツール/', '02_ライブラリ', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/05_ツール/', '03_テンプレート', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/05_ツール/', '04_開発マニュアル', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/05_ツール/', '05_セキュリティ管理', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/', '04_プロジェクト管理', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_プロジェクト管理/', '01_プロジェクト計画', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_プロジェクト管理/', '02_進捗管理', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_プロジェクト管理/', '03_タスクリスト', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(1, 'Walls Dev/04_プロジェクト管理/', '04_リソース管理', 3, False, False, 2, 2);

INSERT INTO cd_directories (company_id, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES (2, 'Rocks', 1, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/', '01_人事管理', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/01_人事管理/', '01_雇用契約', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/01_人事管理/', '02_給与', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/01_人事管理/', '03_福利厚生', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/01_人事管理/', '04_人事評価', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/01_人事管理/', '05_勤怠管理', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/', '02_経理', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/02_経理/', '01_会社帳簿', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/02_経理/', '02_請求書', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/02_経理/', '03_支払い記録', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/02_経理/', '04_税務関連', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/', '03_営業', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/03_営業/', '01_見積依頼', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/03_営業/', '02_契約書', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/03_営業/', '03_打合せ', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/03_営業/', '04_成果物', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/', '04_プロジェクト管理', 2, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/04_プロジェクト管理/', '01_プロジェクト計画', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/04_プロジェクト管理/', '02_進捗管理', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/04_プロジェクト管理/', '03_タスクリスト', 3, False, False, 2, 2);
INSERT INTO cd_directories (company_id, path, directory_name, directory_class, open_flg,delete_flg, create_acc, update_acc) VALUES(2, 'Rocks/04_プロジェクト管理/', '04_リソース管理', 3, False, False, 2, 2);

INSERT INTO cd_permissions (directory_id, user_id, create_acc, update_acc) VALUES (5, 2, 2, 2);
INSERT INTO cd_permissions (directory_id, user_id, create_acc, update_acc) VALUES (6, 2, 2, 2);
INSERT INTO cd_permissions (directory_id, user_id, create_acc, update_acc) VALUES (10, 3, 2, 2);

INSERT INTO departments (company_id, department_name, storage, memo, create_acc, update_acc) VALUES (1, '総務部', 1048576, '総務担当部署', 1, 1);
INSERT INTO departments (company_id, department_name, storage, memo, create_acc, update_acc) VALUES (1, '人事部', 1048576, '人事担当部署', 1, 1);
INSERT INTO departments (company_id, department_name, storage, memo, create_acc, update_acc) VALUES (1, '経理部', 1048576, '経理担当部署', 1, 1);
INSERT INTO departments (company_id, department_name, storage, memo, create_acc, update_acc) VALUES (1, '営業部', 1048576, '営業担当部署', 1, 1);
INSERT INTO departments (company_id, department_name, storage, memo, create_acc, update_acc) VALUES (1, '開発部', 1048576, '開発担当部署', 1, 1);
INSERT INTO departments (company_id, department_name, storage, memo, create_acc, update_acc) VALUES (2, '総務部', 1048576, '総務担当部署', 1, 1);
INSERT INTO departments (company_id, department_name, storage, memo, create_acc, update_acc) VALUES (2, '人事部', 1048576, '人事担当部署', 1, 1);
INSERT INTO departments (company_id, department_name, storage, memo, create_acc, update_acc) VALUES (2, '経理部', 1048576, '経理担当部署', 1, 1);

INSERT INTO assignments (department_id, user_id, create_acc, update_acc) VALUES (10, 10, 2, 3);

INSERT INTO cd_files (user_id, directory_id, filetype_id, file_name, file_size, file_update_at, create_acc, update_acc) VALUES (3, 3, 4, '納品データ2024.xlsx', 1, now(), 4, 9);
INSERT INTO cd_files (user_id, directory_id, filetype_id, file_name, file_size, file_update_at, create_acc, update_acc) VALUES (4, 3, 3, '社外通信2023-01.docx', 1, now(), 2, 1);
INSERT INTO cd_files (user_id, directory_id, filetype_id, file_name, file_size, file_update_at, create_acc, update_acc) VALUES (4, 3, 3, '社外通信2023-02.docx', 1, now(), 2, 1);
INSERT INTO cd_files (user_id, directory_id, filetype_id, file_name, file_size, file_update_at, create_acc, update_acc) VALUES (4, 4, 3, '社外通信2024-01.docx', 1, now(), 2, 1);
INSERT INTO cd_files (user_id, directory_id, filetype_id, file_name, file_size, file_update_at, create_acc, update_acc) VALUES (4, 4, 3, '社外通信2024-02.docx', 1, now(), 2, 1);

INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (1, 3, '01_雇用契約');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (1, 4, '02_給与');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (2, 4, '02_給与');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (2, 5, '03_福利厚生');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (2, 6, '04_人事評価');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (2, 7, '05_勤怠管理');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (2, 9, '06_会社帳簿');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (2, 10, '07_請求書');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (2, 11, '08_支払い記録');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (2, 12, '09_税務関連');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (3, 14, '10_見積依頼');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (6, 4, '02_給与');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (6, 5, '03_福利厚生');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (6, 6, '04_人事評価');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (6, 7, '05_勤怠管理');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (6, 9, '06_会社帳簿');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (6, 10, '07_請求書');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (6, 11, '08_支払い記録');
INSERT INTO cd_favorites (user_id, directory_id, favorite_name) VALUES (6, 12, '09_税務関連');



INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.txt', 'テキスト', 1);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.csv', 'CSVファイル', 2);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.docx', 'ワードドキュメント', 3);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.xlsx', 'エクセルファイル', 4);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.pptx', 'パワーポイント', 5);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.pdf', 'PDFファイル', 6);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.jpg', 'JPEG画像', 7);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.png', 'PNG画像', 8);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.mp3', 'MP3オーディオ', 9);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.mp4', 'MP4ビデオ', 10);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('.zip', 'ZIP圧縮ファイル', 11);
INSERT INTO filetypes (extension, extension_name, icon) VALUES ('', 'ファイルフォルダー', 99);


INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '岐阜県', '21');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '愛知県', '23');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '東京都', '13');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '神奈川県', '14');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '埼玉県', '11');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '千葉県', '12');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '大阪府', '27');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '京都府', '26');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '兵庫県', '28');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '福岡県', '40');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '北海道', '01');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '宮城県', '04');

INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '青森県', '02');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '岩手県', '03');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '秋田県', '05');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '山形県', '06');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '福島県', '07');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '茨城県', '08');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '栃木県', '09');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '群馬県', '10');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '新潟県', '15');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '富山県', '16');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '石川県', '17');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '福井県', '18');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '山梨県', '19');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '長野県', '20');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '静岡県', '22');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '三重県', '24');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '滋賀県', '25');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '奈良県', '29');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '和歌山県', '30');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '鳥取県', '31');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '島根県', '32');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '岡山県', '33');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '広島県', '34');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '山口県', '35');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '徳島県', '36');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '香川県', '37');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '愛媛県', '38');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '高知県', '39');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '佐賀県', '41');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '長崎県', '42');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '熊本県', '43');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '大分県', '44');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '宮崎県', '45');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '鹿児島県', '46');
INSERT INTO regions (country, country_code, region, region_code) VALUES ('日本', 'JP', '沖縄県', '47');


INSERT INTO industries (industry_code, industry_name) VALUES ('A', '農業、林業');
INSERT INTO industries (industry_code, industry_name) VALUES ('B', '漁業');
INSERT INTO industries (industry_code, industry_name) VALUES ('C', '鉱業、採石業、砂利採取業');
INSERT INTO industries (industry_code, industry_name) VALUES ('D', '建設業');
INSERT INTO industries (industry_code, industry_name) VALUES ('E', '製造業');
INSERT INTO industries (industry_code, industry_name) VALUES ('F', '電気・ガス・熱供給・水道業');
INSERT INTO industries (industry_code, industry_name) VALUES ('G', '情報通信業');
INSERT INTO industries (industry_code, industry_name) VALUES ('H', '運輸業、郵便業');
INSERT INTO industries (industry_code, industry_name) VALUES ('I', '卸売業、小売業');
INSERT INTO industries (industry_code, industry_name) VALUES ('J', '金融業、保険業');
INSERT INTO industries (industry_code, industry_name) VALUES ('K', '不動産業、物品賃貸業');
INSERT INTO industries (industry_code, industry_name) VALUES ('L', '学術研究、専門・技術サービス業');
INSERT INTO industries (industry_code, industry_name) VALUES ('M', '宿泊業、飲食サービス業');
INSERT INTO industries (industry_code, industry_name) VALUES ('N', '生活関連サービス業、娯楽業');
INSERT INTO industries (industry_code, industry_name) VALUES ('O', '教育、学習支援業');
INSERT INTO industries (industry_code, industry_name) VALUES ('P', '医療、福祉');
INSERT INTO industries (industry_code, industry_name) VALUES ('Q', '複合サービス事業');
INSERT INTO industries (industry_code, industry_name) VALUES ('R', 'サービス業（他に分類されないもの）');
INSERT INTO industries (industry_code, industry_name) VALUES ('S', '公務（他に分類されるものを除く）');
INSERT INTO industries (industry_code, industry_name) VALUES ('T', '分類不能の産業');
