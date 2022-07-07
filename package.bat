echo "Packaging %1 ..."

rmdir /S /Q ToPackage

@REM --- Copying for OpenLand UE4 ---
md ToPackage
md ToPackage\OpenLand

md ToPackage\OpenLand\Config
xcopy %1\Config ToPackage\OpenLand\Config /E/H
xcopy %1\OpenLand.uproject ToPackage\OpenLand

md ToPackage\OpenLand\Resources
xcopy %1\Resources ToPackage\OpenLand\Resources /E/H

md ToPackage\OpenLand\Content
md ToPackage\OpenLand\Content\OpenLand
xcopy %1\Content\OpenLand ToPackage\OpenLand\Content\OpenLand /E/H

@REM --- Copying for OpenLand UE5 ---
md ToPackage\OpenLand_UE5
xcopy ToPackage\OpenLand ToPackage\OpenLand_UE5 /E/H

xcopy UE5_Overrides ToPackage\OpenLand_UE5 /E/H/Y

@REM Identifying the version
FOR /F "tokens=*" %%g IN ('git describe --tags') do (SET VERSION=%%g)

@REM Making zip files
cd ToPackage
tar.exe -a -c -f OpenLand_UE5_%VERSION%.zip OpenLand_UE5
tar.exe -a -c -f OpenLand_%VERSION%.zip OpenLand