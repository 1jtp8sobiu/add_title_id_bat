@echo off
cd /d %~dp0

rem "TITLE"(3552295351) keyが作成された際に、TitleIDを付加して"UPDATE"
bin\sqlite\sqlite3.exe "%1" "CREATE TRIGGER tgr_ADD_TitleID_TO_TITLE AFTER INSERT ON tbl_appinfo WHEN NEW.key LIKE '572932585' BEGIN UPDATE tbl_appinfo  SET val = '[' || new.titleId || '] ' || val  WHERE titleId = new.titleId AND key='572932585'; END;"

rem "TITLE_00"(3552295351) keyが作成された際に、TitleIDを付加して"UPDATE"
bin\sqlite\sqlite3.exe "%1" "CREATE TRIGGER tgr_ADD_TitleID_TO_TITLE_00 AFTER INSERT ON tbl_appinfo WHEN NEW.key LIKE '3475122802' BEGIN UPDATE tbl_appinfo  SET val = '[' || new.titleId || '] ' || val  WHERE titleId = new.titleId AND key='3475122802'; END;"

echo 完了。app.dbをVitaに書き戻して再起動。
pause
