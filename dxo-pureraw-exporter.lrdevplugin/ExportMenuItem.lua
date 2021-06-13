local LrDialogs = import 'LrDialogs'
local LrShell = import 'LrShell'
local LrApplication = import 'LrApplication'
local catalog = LrApplication.activeCatalog()
local photos = catalog:getTargetPhotos()
local files = {}
for i = 1 , #photos do
	files[ #files + 1 ] = photos[i].path
end
LrShell.openFilesInApp(files, "/Applications/DxO PureRAW.app/Contents/MacOS/PureRawv1")
