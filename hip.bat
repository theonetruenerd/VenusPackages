@echo off
if not "%1%"=="install" (echo "Not a recognised command") ELSE 	(  
	cd "C:\Program Files (x86)\Hamilton\ImportedPackageFiles"
	curl -LJO https://github.com/theonetruenerd/VenusPackages/blob/main/%2%.pkg?raw=true
	"C:\Program Files (x86)\Hamilton\Bin\HxMethodCopy" .\%2.pkg /RunMode proceed /ProcOrg no /FileRule ask /PathRule ask /InstrRule best /SubDir %2% 
	)
