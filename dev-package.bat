echo "Packaging %1 ..."

@REM --- Copying for OpenLand UE4 ---
md ToPackage\OpenLand\Content\ThirdPerson
xcopy %1\Content\ThirdPerson ToPackage\OpenLand\Content\ThirdPerson /E/H

md ToPackage\OpenLand\Content\ThirdPersonBP
xcopy %1\Content\ThirdPersonBP ToPackage\OpenLand\Content\ThirdPersonBP /E/H

md ToPackage\OpenLand\Content\Mannequin
xcopy %1\Content\Mannequin ToPackage\OpenLand\Content\Mannequin /E/H

@REM --- Copying for OpenLand UE5 ---
md ToPackage\OpenLand_UE5\Content\ThirdPerson
xcopy %1\Content\ThirdPerson ToPackage\OpenLand_UE5\Content\ThirdPerson /E/H

md ToPackage\OpenLand_UE5\Content\ThirdPersonBP
xcopy %1\Content\ThirdPersonBP ToPackage\OpenLand_UE5\Content\ThirdPersonBP /E/H

md ToPackage\OpenLand_UE5\Content\Mannequin
xcopy %1\Content\Mannequin ToPackage\OpenLand_UE5\Content\Mannequin /E/H
