echo "Packaging %1 ..."

rmdir /S /Q ToPackage

@REM --- OpenLand ---
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

md ToPackage\OpenLand\Content\ThirdPerson
xcopy %1\Content\ThirdPerson ToPackage\OpenLand\Content\ThirdPerson /E/H

md ToPackage\OpenLand\Content\ThirdPersonBP
xcopy %1\Content\ThirdPersonBP ToPackage\OpenLand\Content\ThirdPersonBP /E/H

md ToPackage\OpenLand\Content\Mannequin
xcopy %1\Content\Mannequin ToPackage\OpenLand\Content\Mannequin /E/H

