# VenusPackages
A place to download and install venus libraries, in a similar manner to the way one would use pip

The command syntax to be used is as follows:

- To download the library file just onto your computer from cmd line:

curl -O https://github.com/theonetruenerd/VenusPackages/blob/main/[LibraryName]

NB: By default, this imports the pkg file with the same name as it is here, into whatever folder the cmd line is in when running the command. This can be changed as normally would be for the command line. The pkg files do not necessarily need to be downloaded into the Hamilton folder in Program Files (x86).

- To import the library from the pkg file via the command line, the following syntax is used:

HxMethodCopy .\[Insert library name here e.g. library.pkg]
This then has several arguments that can be passed to it:
- /RunMode full|proceed|silent, determines whether the user interface pops up as it would when normally importing a pkg file. If this is set to silent, settings must be pre-configured in the other arguments.
- /LogFile <file>, specifies the filepath that the log output will be stored in
- /ProcOrg yes|no, whether the original Hamilton files are to be processed during the import
- /FileRule replace|keep|ask, determines whether files should be replaced, untouched, or asked about when the importer tries to import a file that already exists
- /PathRule skip|method|library|labware|other|abort|ask, describes how the utility should act during the unpacking, and determines where files go if the target directory doesn't exist and can't be created
- /InstrRule best|none|abort|ask, determines how the import acts if it finds multiple compatible instruments on the target system
- /MethPath default|exported|library|labware|other|<path>, specifies the import directory for any method or workflow files being downloaded with the library
- /LibPath default|exported|method|labware|other|<path>, specifies the import directory for library files
- /LabPath default|exported|method|library|other|<path>, specifies the import directory for labware files
- /OthPath default|exported|method|library|labware|<path>, specifies the import directory of other files
- /SubDir <subPath>, specifies the subdirectory that is created underneath the main Method/Library/Labware directories to store the new library in, if desired
- /SkipMeth, specifies not to import any method files which come with the library
- /SkipLib, specifies not to import any library files, which kind of defeats the point?
- /SkipLab, specifies not to import any labware files
- /SkipOth, specifies not to import any files that aren't method/workflow/library/labware files

For example, if I wanted to import the TestImportLibrary without the user interface, putting the files in subdirectories named "TestImportLibrarySubdirectory", replacing any files that exist and skipping method files, I would run the following command:

HxMethodCopy .\TestImportLibrary.pkg /RunMode silent /SubDir TestImportLibrarySubdirectory /FileRule replace /SkipMeth

Alternatively, you can download the batch file in this repo and add it to your path. If you do that, then you can simply run the following command and it should do all of the above:
- "hip [libraryname]"

  This should install the correct library from github, then run the import library from pkg command with the following parameters:
  - RunMode set to proceed
  - ProcOrg set to no
  - FileRule set to ask
  - PathRule set to ask
  - InstrRule set to best
  - MethPath,LibPath,LabPath,OthPath all set to default
  - SubDir set to the library name
  - SkipMeth,SkipLib,SkipLab,SkipOth all off
