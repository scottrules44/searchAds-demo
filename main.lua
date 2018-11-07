local searchAds = require "plugin.searchAds"


local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor( .5 )

local title = display.newText( "Search Ads", display.contentCenterX, 50, native.systemFontBold, 25 )

local subtile = display.newText( "Note have to open search ad to get data", display.contentCenterX, display.contentCenterY, native.systemFont, 15 )


local json = require "json"
searchAds.init(function ( e )
	native.showAlert( "Search ads", json.encode( e ) , {"Ok"} )
end)