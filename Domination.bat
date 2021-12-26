echo off
cls
title Domination
color 07
mode con cols=40 lines=23
set nosave=n
if not exist "save.bat" set nosave=y
if "%nosave%"=="y" set score=0
if "%nosave%"=="y" set renderdistance=5
if "%nosave%"=="y" echo set score=%score% >"save.bat"
if "%nosave%"=="y" echo set renderdistance=%renderdistance% >>"save.bat"
if exist "save.bat" call "save.bat"
if exist "save.bat" set /a score-=1
if exist "save.bat" set /a score+=1
if exist "save.bat" set /a renderdistance-=1
if exist "save.bat" set /a renderdistance+=1
goto menu
:menu
del "temp.bat"
if exist "Y:\" net use Y: /delete
cls
set input=0
echo Squirrel 1-D engine Menu
echo ------------------
echo 1 = Engine Options
echo 2 = Map Builder
echo 3 = Controls
echo 4 = Exit
set /p input=INPUT:
if "%input%"=="1" goto gameoptions
if "%input%"=="2" goto menub
if "%input%"=="3" goto controls
if "%input%"=="4" exit
goto menu
:gameoptions
cls
set input=0
echo Squirrel 1-D engine Options
echo ------------------------
echo %username% [%score%]
echo ------------------------
echo 1 = Create Game
echo 2 = Join Game
echo 3 = Settings
echo 4 = Back
set /p input=INPUT:
if "%input%"=="1" goto creategame
if "%input%"=="2" goto connect
if "%input%"=="3" goto renderdistanceset
if "%input%"=="4" goto menu
goto gameoptions
:renderdistanceset
echo set score=%score% >"save.bat"
echo set renderdistance=%renderdistance% >>"save.bat"
if %renderdistance% gtr 7 set renderdistance=7
if %renderdistance% lss 4 set renderdistance=4
if "%renderdistance%"=="7" set levels=Maximum
if "%renderdistance%"=="6" set levels=High
if "%renderdistance%"=="5" set levels=Normal
if "%renderdistance%"=="4" set levels=Minimum
cls
set input=0
echo Squirrel 1-D engine Settings
echo ---------------------------
echo Render Distance: %renderdistance%
echo Overall Quality: %levels%
echo ---------------------------
echo 1 = Increase
echo 2 = Decrease
echo 3 = Back
set /p input=INPUT:
if "%input%"=="1" set /a renderdistance+=1
if "%input%"=="2" set /a renderdistance-=1
if "%input%"=="3" goto gameoptions
goto renderdistanceset
:menub
cls
set input=0
echo Squirrel 1-D engine Map Builder
echo -----------------------
echo 1 = Create Map
echo 2 = Delete Map
echo 3 = Back
set /p input=INPUT:
if "%input%"=="1" goto startsetb
if "%input%"=="2" goto removeselectb
if "%input%"=="3" goto menu
goto menub
:removeselectb
cls
set select=0
if not exist "Maps" goto nomapb
if not exist "Maps\map1.bat" if not exist "Maps\map2.bat" if not exist "Maps\map3.bat" if not exist "Maps\map4.bat" if not exist "Maps\map5.bat" if not exist "Maps\map6.bat" if not exist "Maps\map7.bat" if not exist "Maps\map8.bat" if not exist "Maps\map9.bat" rd "Maps"&goto nomapb
echo Select A Map
echo ---------------------
if exist "Maps\map1.bat" call "Maps\map1.bat"
if exist "Maps\map1.bat" echo 1 = %map%
if exist "Maps\map2.bat" call "Maps\map2.bat"
if exist "Maps\map2.bat" echo 2 = %map%
if exist "Maps\map3.bat" call "Maps\map3.bat"
if exist "Maps\map3.bat" echo 3 = %map%
if exist "Maps\map4.bat" call "Maps\map4.bat"
if exist "Maps\map4.bat" echo 4 = %map%
if exist "Maps\map5.bat" call "Maps\map5.bat"
if exist "Maps\map5.bat" echo 5 = %map%
if exist "Maps\map6.bat" call "Maps\map6.bat"
if exist "Maps\map6.bat" echo 6 = %map%
if exist "Maps\map7.bat" call "Maps\map7.bat"
if exist "Maps\map7.bat" echo 7 = %map%
if exist "Maps\map8.bat" call "Maps\map8.bat"
if exist "Maps\map8.bat" echo 8 = %map%
if exist "Maps\map9.bat" call "Maps\map9.bat"
if exist "Maps\map9.bat" echo 9 = %map%
echo ---------------------
echo 0 = Back
set /p select=INPUT:
if "%select%"=="0" goto menub
if exist "Maps\map%select%.bat" del "Maps\map%select%.bat"&rd "Maps"&goto deletedb
goto removeselectb
:deletedb
cls
if not exist "Maps\map%select%.bat" echo Map Has Been Deleted!
if not exist "Maps\map%select%.bat" echo ---------------------
if exist "Maps\map%select%.bat" echo Map Failed To Be Deleted!
if exist "Maps\map%select%.bat" echo -------------------------
timeout /t 3 >nul
goto menub
:startsetb
cls
echo Creating Map...
echo ---------------
set build=1
set px=1
set py=1
set bx=0
set by=1
goto startb
:startb
set /a bx+=1
set x%bx%x%by%=.
if "%bx%"=="20" set /a by+=1
if "%bx%"=="20" set bx=0
if "%by%"=="13" goto mainb
goto startb
:mainb
cls
set x%px%x%py%=@
echo %x1x1%%x2x1%%x3x1%
echo %x1x2%%x2x2%%x3x2%
echo %x1x3%%x2x3%%x3x3%
echo %x1x4%%x2x4%%x3x4%
echo %x1x5%%x2x5%%x3x5%
echo %x1x6%%x2x6%%x3x6%
echo %x1x7%%x2x7%%x3x7%
echo %x1x8%%x2x8%%x3x8%
echo %x1x9%%x2x9%%x3x9%
echo %x1x10%%x2x10%%x3x10%
echo %x1x11%%x2x11%%x3x11%
echo %x1x12%%x2x12%%x3x12%
echo %x1x13%%x2x13%%x3x13%
echo %x1x14%%x2x14%%x3x14%
echo %x1x15%%x2x15%%x3x15%
echo %x1x16%%x2x16%%x3x16%
echo %x1x17%%x2x17%%x3x17%
echo %x1x18%%x2x18%%x3x18%
echo %x1x19%%x2x19%%x3x19%
echo %x1x20%%x2x20%%x3x20%
echo %x1x21%%x2x21%%x3x21%
echo %x1x22%%x2x22%%x3x22%
echo %x1x23%%x2x23%%x3x23%
echo %x1x24%%x2x24%%x3x24%
echo %x1x25%%x2x25%%x3x25%
echo %x1x26%%x2x26%%x3x26%
echo %x1x27%%x2x27%%x3x27%
echo %x1x28%%x2x28%%x3x28%
echo %x1x29%%x2x29%%x3x29%
echo %x1x30%%x2x30%%x3x30%
echo %x1x31%%x2x31%%x3x31%
echo %x1x32%%x2x32%%x3x32%
echo %x1x33%%x2x33%%x3x33%
echo %x1x34%%x2x34%%x3x34%
echo %x1x35%%x2x35%%x3x35%
echo %x1x36%%x2x36%%x3x36%
echo %x1x37%%x2x37%%x3x37%
echo %x1x38%%x2x38%%x3x38%
echo %x1x39%%x2x39%%x3x39%
echo %x1x40%%x2x40%%x3x40%
echo ----------------------
if "%build%"=="1" echo Build: No
if "%build%"=="2" echo Build: Yes
echo T = Toggle Build
echo X = Save And Exit
echo W,S,A,D = Move
choice /c:wsadtx /n /m ""
if "%errorlevel%"=="1" goto upb
if "%errorlevel%"=="2" goto downb
if "%errorlevel%"=="3" goto leftb
if "%errorlevel%"=="4" goto rightb
if "%errorlevel%"=="5" goto toggleb
if "%errorlevel%"=="6" goto saveb
goto mainb
:toggleb
set /a build+=1
if "%build%"=="3" set build=1
goto mainb
:upb
if "%build%"=="1" set x%px%x%py%=.
if "%build%"=="2" set x%px%x%py%=#
set /a py-=1
if %py% lss 1 set py=1
goto mainb
:downb
if "%build%"=="1" set x%px%x%py%=.
if "%build%"=="2" set x%px%x%py%=#
set /a py+=1
if %py% gtr 12 set py=12
goto mainb
:leftb
if "%build%"=="1" set x%px%x%py%=.
if "%build%"=="2" set x%px%x%py%=#
set /a px-=1
if %px% lss 1 set px=1
goto mainb
:rightb
if "%build%"=="1" set x%px%x%py%=.
if "%build%"=="2" set x%px%x%py%=#
set /a px+=1
if %px% gtr 20 set px=20
goto mainb
:saveb
cls
set map=Map
if not exist "Maps" md "Maps"
echo Save Map As:
echo -------------
set /p map=Map Name:
cls
echo Saving Map...
echo -------------
set find=0
goto findmapb
:findmapb
if "%find%"=="9" goto toomanyb
set /a find+=1
if exist "Maps\map%find%.bat" goto findmapb
goto saveallb
:nomapb
cls
echo You Have No Maps!
echo -----------------
timeout /t 3 >nul
goto menub
:toomanyb
cls
echo Too Many Maps!
echo --------------
timeout /t 3 >nul
goto menub
:saveallb
echo set map=%map%>"Maps\map%find%.bat"
set x%px%x%py%=.
set sx=0
set sy=1
goto writeb
:writeb
set /a sx+=1
echo set zone=%%x%sx%x%sy%%%>"temp.bat"
call "temp.bat"
echo set m%sx%m%sy%=%zone%>>"Maps\map%find%.bat"
if "%sx%"=="20" set /a sy+=1
if "%sx%"=="20" set sx=0
if "%sy%"=="13" del "temp.bat"
if "%sy%"=="13" goto doneb
goto writeb
:doneb
cls
if exist "Maps\map%find%.bat" echo Map Has Been Saved!
if exist "Maps\map%find%.bat" echo -------------------
if not exist "Maps\map%find%.bat" echo Map Failed To Save!
if not exist "Maps\map%find%.bat" echo -------------------
timeout /t 3 >nul
goto menub
:controls
cls
set input=0
echo Controls:
echo -------------------------
echo Move: 'W','S','A','D'
echo Turn: 'Q','E'
echo Fire: 'F'
echo View: 'V'
echo Exit: 'X'
echo -------------------------
echo 1 = Back
set /p input=INPUT:
if "%input%"=="1" goto menu
goto controls
:connect
cls
set ip=0
set name=none
echo Connect To Game
echo ----------------------
set /p ip=Host IP Address:
if exist "Y:\" net use Y: /delete
cls
echo Connecting...
echo -------------
net use Y: "\\%ip%\Users\Public"
if not exist "Y:\" goto noconnect
set game=Y:
goto setupgame
:setupgame
set p1x=0
set p1y=0
set p2x=0
set p2y=0
set p3x=0
set p3y=0
set p4x=0
set p4y=0
if exist "%game%\Domination Game\map.bat" if exist "%game%\Domination Game\players.bat" if not exist "%game%\Domination Game\start.dat" goto connecting
if exist "%game%\Domination Game\start.dat" goto startedgame
goto nogame
:nogame
cls
echo Game Wasn't Ready To Connect!
echo -----------------------------
timeout /t 3 >nul
goto menu
:maxgame
cls
echo That Game Lobby Is Full!
echo ------------------------
timeout /t 3 >nul
goto menu
:startedgame
cls
echo That Game Already Started!
echo --------------------------
timeout /t 3 >nul
goto menu
:creategame
cls
echo Creating Game...
echo ----------------
set p1x=0
set p1y=0
set p2x=0
set p2y=0
set p3x=0
set p3y=0
set p4x=0
set p4y=0
set game=%public%
if exist "%game%\Domination Game" goto openupgame
md "%game%\Domination Game"&goto setmap
goto create
:openupgame
del "%game%\Domination Game\p1.bat"
del "%game%\Domination Game\p1d.bat"
del "%game%\Domination Game\p1dead.dat"
del "%game%\Domination Game\p2.bat"
del "%game%\Domination Game\p2d.bat"
del "%game%\Domination Game\p2dead.dat"
del "%game%\Domination Game\p3.bat"
del "%game%\Domination Game\p3d.bat"
del "%game%\Domination Game\p3dead.dat"
del "%game%\Domination Game\p4.bat"
del "%game%\Domination Game\p4d.bat"
del "%game%\Domination Game\p4dead.dat"
del "%game%\Domination Game\players.bat"
del "%game%\Domination Game\lobby.dat"
del "%game%\Domination Game\start.dat"
del "%game%\Domination Game\map.bat"
rd "%game%\Domination Game"
goto creategame
:connecting
call "%game%\Domination Game\players.bat"
set /a players-=1
set /a players+=1
if %players% lss 4 goto join
goto maxgame
:noconnect
cls
echo Failed To Connect!
echo ------------------
timeout 3 >nul
goto menu
:create
set host=y
set player=1
echo set players=1 >"%game%\Domination Game\players.bat"
echo 1: %username% [%score%]>"%game%\Domination Game\lobby.dat"
goto setstart
:join
cls
echo Joining Game...
echo ---------------
set host=n
set /a update=%players%+1
set player=%update%
echo set players=%update% >"%game%\Domination Game\players.bat"
echo %update%: %username% [%score%]>>"%game%\Domination Game\lobby.dat"
goto setstart
:setmap
cls
set input=0
if not exist "Maps" goto nomap
if not exist "Maps\map1.bat" if not exist "Maps\map2.bat" if not exist "Maps\map3.bat" if not exist "Maps\map4.bat" if not exist "Maps\map5.bat" if not exist "Maps\map6.bat" if not exist "Maps\map7.bat" if not exist "Maps\map8.bat" if not exist "Maps\map9.bat" rd "Maps"&goto nomap
echo Select A Map
echo -----------------------
if exist "Maps\map1.bat" call "Maps\map1.bat"
if exist "Maps\map1.bat" echo 1 = %map%
if exist "Maps\map2.bat" call "Maps\map2.bat"
if exist "Maps\map2.bat" echo 2 = %map%
if exist "Maps\map3.bat" call "Maps\map3.bat"
if exist "Maps\map3.bat" echo 3 = %map%
if exist "Maps\map4.bat" call "Maps\map4.bat"
if exist "Maps\map4.bat" echo 4 = %map%
if exist "Maps\map5.bat" call "Maps\map5.bat"
if exist "Maps\map5.bat" echo 5 = %map%
if exist "Maps\map6.bat" call "Maps\map6.bat"
if exist "Maps\map6.bat" echo 6 = %map%
if exist "Maps\map7.bat" call "Maps\map7.bat"
if exist "Maps\map7.bat" echo 7 = %map%
if exist "Maps\map8.bat" call "Maps\map8.bat"
if exist "Maps\map8.bat" echo 8 = %map%
if exist "Maps\map9.bat" call "Maps\map9.bat"
if exist "Maps\map9.bat" echo 9 = %map%
echo -----------------------
set /p input=INPUT:
if exist "Maps\map%input%.bat" copy "Maps\map%input%.bat" "%game%\Domination Game\map.bat"&goto create
goto setmap
:nomap
cls
echo You Do Not Have Any Maps!
echo -------------------------
timeout /t 3 >nul
goto closegame
:setstart
call "Y:\Domination Game\map.bat"
set /a turn=%random%*4/32768+1
set life=100
if exist "%game%\Domination Game\p1.bat" call "%game%\Domination Game\p1.bat"
if exist "%game%\Domination Game\p2.bat" call "%game%\Domination Game\p2.bat"
if exist "%game%\Domination Game\p3.bat" call "%game%\Domination Game\p3.bat"
if exist "%game%\Domination Game\p4.bat" call "%game%\Domination Game\p4.bat"
if exist "%game%\Domination Game\p1.bat" set /a p1x-=1
if exist "%game%\Domination Game\p1.bat" set /a p1x+=1
if exist "%game%\Domination Game\p1.bat" set /a p1y-=1
if exist "%game%\Domination Game\p1.bat" set /a p1y+=1
if exist "%game%\Domination Game\p2.bat" set /a p2x-=1
if exist "%game%\Domination Game\p2.bat" set /a p2x+=1
if exist "%game%\Domination Game\p2.bat" set /a p2y-=1
if exist "%game%\Domination Game\p2.bat" set /a p2y+=1
if exist "%game%\Domination Game\p3.bat" set /a p3x-=1
if exist "%game%\Domination Game\p3.bat" set /a p3x+=1
if exist "%game%\Domination Game\p3.bat" set /a p3y-=1
if exist "%game%\Domination Game\p3.bat" set /a p3y+=1
if exist "%game%\Domination Game\p4.bat" set /a p4x-=1
if exist "%game%\Domination Game\p4.bat" set /a p4x+=1
if exist "%game%\Domination Game\p4.bat" set /a p4y-=1
if exist "%game%\Domination Game\p4.bat" set /a p4y+=1
if exist "%game%\Domination Game\p1.bat" set m%p1x%m%p1y%=1
if exist "%game%\Domination Game\p2.bat" set m%p1x%m%p1y%=2
if exist "%game%\Domination Game\p3.bat" set m%p1x%m%p1y%=3
if exist "%game%\Domination Game\p4.bat" set m%p1x%m%p1y%=4
set /a px=%random%*20/32768+1
set /a py=%random%*12/32768+1
echo set zone=%%m%px%m%py%%%>"temp.bat"
call "temp.bat"
if not "%zone%"=="." goto setstart
echo set p%player%x=%px% >"%game%\Domination Game\p%player%.bat"
echo set p%player%y=%py% >>"%game%\Domination Game\p%player%.bat"
goto lobby
:lobby
cls
if "%host%"=="n" if not exist "Y:\" goto nogame
if not exist "%game%\Domination Game" goto closedgame
if exist "%game%\Domination Game\start.dat" goto starting
set input=0
echo Domination Lobby
echo ---------------------------
type "%game%\Squirrel 1-D engine\lobby.dat"
echo Map: %map%
echo ---------------------------
if "%host%"=="n" timeout /t 2 >nul
if "%host%"=="n" goto lobby
if "%host%"=="y" echo 1 = Start Game
if "%host%"=="y" echo 2 = Refresh
if "%host%"=="y" echo 3 = Close
if "%host%"=="y" set /p input=INPUT:
if "%host%"=="y" if "%input%"=="1" goto startgame
if "%host%"=="y" if "%input%"=="2" goto lobby
if "%host%"=="y" if "%input%"=="3" goto closegame
goto lobby
:closedgame
cls
echo Game Has Closed!
echo ----------------
timeout /t 3 >nul
goto menu
:startgame
call "%game%\Domination Game\players.bat"
set /a players-=1
set /a players+=1
if "%players%"=="1" goto moreplayer
echo.>"%game%\Domination Game\start.dat"
goto lobby
:moreplayer
cls
echo You Need Atleast 2 Players To Start!
echo ------------------------------------
timeout /t 3 >nul
goto lobby
:starting
cls
echo Game Is Starting...
echo -------------------
call "%game%\Domination Game\players.bat"
set /a players-=1
set /a players+=1
goto render
:render
call "%game%\Squirrel 1-D engine\map.bat"
set fire=n
set x=0
set y=1
echo set p%player%x=%px% >"%game%\Domination Game\p%player%.bat"
echo set p%player%y=%py% >>"%game%\Domination Game\p%player%.bat"
if exist "%game%\Domination Game\p1.bat" call "%game%\Domination Game\p1.bat"
if exist "%game%\Domination Game\p2.bat" call "%game%\Domination Game\p2.bat"
if exist "%game%\Domination Game\p3.bat" call "%game%\Domination Game\p3.bat"
if exist "%game%\Domination Game\p4.bat" call "%game%\Domination Game\p4.bat"
if exist "%game%\Domination Game\p1.bat" set /a p1x-=1
if exist "%game%\Domination Game\p1.bat" set /a p1x+=1
if exist "%game%\Domination Game\p1.bat" set /a p1y-=1
if exist "%game%\Domination Game\p1.bat" set /a p1y+=1
if exist "%game%\Domination Game\p2.bat" set /a p2x-=1
if exist "%game%\Domination Game\p2.bat" set /a p2x+=1
if exist "%game%\Domination Game\p2.bat" set /a p2y-=1
if exist "%game%\Domination Game\p2.bat" set /a p2y+=1
if exist "%game%\Domination Game\p3.bat" set /a p3x-=1
if exist "%game%\Domination Game\p3.bat" set /a p3x+=1
if exist "%game%\Domination Game\p3.bat" set /a p3y-=1
if exist "%game%\Domination Game\p3.bat" set /a p3y+=1
if exist "%game%\Domination Game\p4.bat" set /a p4x-=1
if exist "%game%\Domination Game\p4.bat" set /a p4x+=1
if exist "%game%\Domination Game\p4.bat" set /a p4y-=1
if exist "%game%\Domination Game\p4.bat" set /a p4y+=1
if not exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p1.bat" set m%p1x%m%p1y%=1
if not exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p2.bat" set m%p2x%m%p2y%=2
if not exist "%game%\Domination Game\p3dead.dat" if exist "%game%\Domination Game\p3.bat" set m%p3x%m%p3y%=3
if not exist "%game%\Domination Game\p4dead.dat" if exist "%game%\Domination Game\p4.bat" set m%p4x%m%p4y%=4
set m%px%m%py%=.
goto draw
:draw
set /a x+=1
set x%x%x%y%=.
if "%x%"=="31" set /a y+=1
if "%x%"=="31" set x=0
if "%y%"=="16" goto raycastset
goto draw
:raycastset
set m%px%m%py%=.
set ray=0
set add=-1
set rayaim=left
goto newray
:newray
set rayx=%px%
set rayy=%py%
set /a ray+=1
if "%rayaim%"=="left" set /a add+=1
if "%rayaim%"=="right" set /a add-=1
set space=%add%
if "%turn%"=="1" set /a rayy-=%add%
if "%turn%"=="2" set /a rayx+=%add%
if "%turn%"=="3" set /a rayy+=%add%
if "%turn%"=="4" set /a rayx-=%add%
goto raycast
:raycast
if %space% gtr %renderdistance% set zone=n
if %space% gtr %renderdistance% goto setray
echo set zone=%%m%rayx%m%rayy%%%>"temp.bat"
call "temp.bat"
if not "%zone%"=="." goto setray
set /a space+=1
if "%turn%"=="1" set /a rayy-=1
if "%turn%"=="2" set /a rayx+=1
if "%turn%"=="3" set /a rayy+=1
if "%turn%"=="4" set /a rayx-=1
if "%turn%"=="1" if "%rayaim%"=="left" set /a rayx-=1
if "%turn%"=="1" if "%rayaim%"=="right" set /a rayx+=1
if "%turn%"=="2" if "%rayaim%"=="left" set /a rayy-=1
if "%turn%"=="2" if "%rayaim%"=="right" set /a rayy+=1
if "%turn%"=="3" if "%rayaim%"=="left" set /a rayx+=1
if "%turn%"=="3" if "%rayaim%"=="right" set /a rayx-=1
if "%turn%"=="4" if "%rayaim%"=="left" set /a rayy+=1
if "%turn%"=="4" if "%rayaim%"=="right" set /a rayy-=1
echo set zone=%%m%rayx%m%rayy%%%>"temp.bat"
call "temp.bat"
if not "%zone%"=="." goto setray
goto raycast
:setray
if "%zone%"=="" set zone=n
set ray%ray%i=%zone%
set ray%ray%s=%space%
if "%space%"=="%add%" if "%rayaim%"=="left" set rayaim=right
if "%ray%"=="31" goto drawscreensetup
if "%rayaim%"=="right" if "%add%"=="0" goto drawscreensetup
goto newray
:drawscreensetup
set /a blocks=31/%ray%
set /a endall=%blocks%*(%ray%-1)+1
set block=0
set screenmove=0
goto drawscreenset
:drawscreenset
set /a block+=1
echo set item=%%ray%block%i%%>"temp.bat"
echo set spaces=%%ray%block%s%% >>"temp.bat"
call "temp.bat"
set /a spaces-=1
set /a spaces+=1
if %spaces% lss 1 set spaces=1
if %spaces% gtr 13 set spaces=13
set /a depth=13/%spaces%
if "%item%"=="n" if not "%block%"=="%ray%" goto drawscreenset
if "%item%"=="n" if "%block%"=="%ray%" goto drawgun
if not "%block%"=="%ray%" set /a screenx=%blocks%*%block%+1
if "%block%"=="%ray%" set screenx=32
set screeny=8
set line=1
set flip=1
goto drawscreen
:drawscreenline
if "%block%"=="%ray%" if "%screenx%"=="%endall%" if "%line%"=="%depth%" goto drawgun
set screenmove=0
if not "%block%"=="%ray%" if "%line%"=="%depth%" goto drawscreenset
if not "%block%"=="%ray%" set /a screenx=%blocks%*%block%+1
if "%block%"=="%ray%" set screenx=32
if "%flip%"=="1" set /a screeny-=%line%
if "%flip%"=="2" set /a screeny+=%line%
set /a line+=1
set /a flip+=1
if %flip% gtr 2 set flip=1
goto drawscreen
:drawscreen
set /a screenmove+=1
set /a screenx-=1
set x%screenx%x%screeny%=%item%
if not "%block%"=="%ray%" if "%screenmove%"=="%blocks%" goto drawscreenline
if "%block%"=="%ray%" if "%screenx%"=="%endall%" goto drawscreenline
goto drawscreen
:drawgun
set x16x8=+
set x16x13=_
set x15x14=/
set x16x14=:
set x17x14=\
set x14x15=/
set x15x15=_
set x16x15=_
set x17x15=_
set x18x15=\
goto main
:main
cls
if "%host%"=="n" if not exist "Y:\" goto nogame
if not exist "%game%\Domination Game" goto closedgame
set /a life+=1
if %life% gtr 100 set life=100
if exist "%game%\Domination Game\p%player%d.bat" call "%game%\Domination Game\p%player%d.bat"
if exist "%game%\Domination Game\p%player%d.bat" del "%game%\Domination Game\p%player%d.bat"
if %life% lss 1 goto dead
echo %x1x1%%x2x1%%x3x1%%x4x1%%x5x1%%x6x1%%x7x1%%x8x1%%x9x1%%x10x1%%x11x1%%x12x1%%x13x1%%x14x1%%x15x1%%x16x1%%x17x1%%x18x1%%x19x1%%x20x1%%x21x1%%x22x1%%x23x1%%x24x1%%x25x1%%x26x1%%x27x1%%x28x1%%x29x1%%x30x1%%x31x1%
echo %x1x2%%x2x2%%x3x2%%x4x2%%x5x2%%x6x2%%x7x2%%x8x2%%x9x2%%x10x2%%x11x2%%x12x2%%x13x2%%x14x2%%x15x2%%x16x2%%x17x2%%x18x2%%x19x2%%x20x2%%x21x2%%x22x2%%x23x2%%x24x2%%x25x2%%x26x2%%x27x2%%x28x2%%x29x2%%x30x2%%x31x2%
echo %x1x3%%x2x3%%x3x3%%x4x3%%x5x3%%x6x3%%x7x3%%x8x3%%x9x3%%x10x3%%x11x3%%x12x3%%x13x3%%x14x3%%x15x3%%x16x3%%x17x3%%x18x3%%x19x3%%x20x3%%x21x3%%x22x3%%x23x3%%x24x3%%x25x3%%x26x3%%x27x3%%x28x3%%x29x3%%x30x3%%x31x3%
echo %x1x4%%x2x4%%x3x4%%x4x4%%x5x4%%x6x4%%x7x4%%x8x4%%x9x4%%x10x4%%x11x4%%x12x4%%x13x4%%x14x4%%x15x4%%x16x4%%x17x4%%x18x4%%x19x4%%x20x4%%x21x4%%x22x4%%x23x4%%x24x4%%x25x4%%x26x4%%x27x4%%x28x4%%x29x4%%x30x4%%x31x4%
echo %x1x5%%x2x5%%x3x5%%x4x5%%x5x5%%x6x5%%x7x5%%x8x5%%x9x5%%x10x5%%x11x5%%x12x5%%x13x5%%x14x5%%x15x5%%x16x5%%x17x5%%x18x5%%x19x5%%x20x5%%x21x5%%x22x5%%x23x5%%x24x5%%x25x5%%x26x5%%x27x5%%x28x5%%x29x5%%x30x5%%x31x5%
echo %x1x6%%x2x6%%x3x6%%x4x6%%x5x6%%x6x6%%x7x6%%x8x6%%x9x6%%x10x6%%x11x6%%x12x6%%x13x6%%x14x6%%x15x6%%x16x6%%x17x6%%x18x6%%x19x6%%x20x6%%x21x6%%x22x6%%x23x6%%x24x6%%x25x6%%x26x6%%x27x6%%x28x6%%x29x6%%x30x6%%x31x6%
echo %x1x7%%x2x7%%x3x7%%x4x7%%x5x7%%x6x7%%x7x7%%x8x7%%x9x7%%x10x7%%x11x7%%x12x7%%x13x7%%x14x7%%x15x7%%x16x7%%x17x7%%x18x7%%x19x7%%x20x7%%x21x7%%x22x7%%x23x7%%x24x7%%x25x7%%x26x7%%x27x7%%x28x7%%x29x7%%x30x7%%x31x7%
echo %x1x8%%x2x8%%x3x8%%x4x8%%x5x8%%x6x8%%x7x8%%x8x8%%x9x8%%x10x8%%x11x8%%x12x8%%x13x8%%x14x8%%x15x8%%x16x8%%x17x8%%x18x8%%x19x8%%x20x8%%x21x8%%x22x8%%x23x8%%x24x8%%x25x8%%x26x8%%x27x8%%x28x8%%x29x8%%x30x8%%x31x8%
echo %x1x9%%x2x9%%x3x9%%x4x9%%x5x9%%x6x9%%x7x9%%x8x9%%x9x9%%x10x9%%x11x9%%x12x9%%x13x9%%x14x9%%x15x9%%x16x9%%x17x9%%x18x9%%x19x9%%x20x9%%x21x9%%x22x9%%x23x9%%x24x9%%x25x9%%x26x9%%x27x9%%x28x9%%x29x9%%x30x9%%x31x9%
echo %x1x10%%x2x10%%x3x10%%x4x10%%x5x10%%x6x10%%x7x10%%x8x10%%x9x10%%x10x10%%x11x10%%x12x10%%x13x10%%x14x10%%x15x10%%x16x10%%x17x10%%x18x10%%x19x10%%x20x10%%x21x10%%x22x10%%x23x10%%x24x10%%x25x10%%x26x10%%x27x10%%x28x10%%x29x10%%x30x10%%x31x10%
echo %x1x11%%x2x11%%x3x11%%x4x11%%x5x11%%x6x11%%x7x11%%x8x11%%x9x11%%x10x11%%x11x11%%x12x11%%x13x11%%x14x11%%x15x11%%x16x11%%x17x11%%x18x11%%x19x11%%x20x11%%x21x11%%x22x11%%x23x11%%x24x11%%x25x11%%x26x11%%x27x11%%x28x11%%x29x11%%x30x11%%x31x11%
echo %x1x12%%x2x12%%x3x12%%x4x12%%x5x12%%x6x12%%x7x12%%x8x12%%x9x12%%x10x12%%x11x12%%x12x12%%x13x12%%x14x12%%x15x12%%x16x12%%x17x12%%x18x12%%x19x12%%x20x12%%x21x12%%x22x12%%x23x12%%x24x12%%x25x12%%x26x12%%x27x12%%x28x12%%x29x12%%x30x12%%x31x12%
echo %x1x13%%x2x13%%x3x13%%x4x13%%x5x13%%x6x13%%x7x13%%x8x13%%x9x13%%x10x13%%x11x13%%x12x13%%x13x13%%x14x13%%x15x13%%x16x13%%x17x13%%x18x13%%x19x13%%x20x13%%x21x13%%x22x13%%x23x13%%x24x13%%x25x13%%x26x13%%x27x13%%x28x13%%x29x13%%x30x13%%x31x13%
echo %x1x14%%x2x14%%x3x14%%x4x14%%x5x14%%x6x14%%x7x14%%x8x14%%x9x14%%x10x14%%x11x14%%x12x14%%x13x14%%x14x14%%x15x14%%x16x14%%x17x14%%x18x14%%x19x14%%x20x14%%x21x14%%x22x14%%x23x14%%x24x14%%x25x14%%x26x14%%x27x14%%x28x14%%x29x14%%x30x14%%x31x14%
echo %x1x15%%x2x15%%x3x15%%x4x15%%x5x15%%x6x15%%x7x15%%x8x15%%x9x15%%x10x15%%x11x15%%x12x15%%x13x15%%x14x15%%x15x15%%x16x15%%x17x15%%x18x15%%x19x15%%x20x15%%x21x15%%x22x15%%x23x15%%x24x15%%x25x15%%x26x15%%x27x15%%x28x15%%x29x15%%x30x15%%x31x15%
echo Health.: %life%
if "%turn%"=="1" echo Compass: North
if "%turn%"=="2" echo Compass: East
if "%turn%"=="3" echo Compass: South
if "%turn%"=="4" echo Compass: West
if "%fire%"=="y" goto bullet
if "%players%"=="1" goto win
if "%players%"=="2" if "%player%"=="1" if exist "%game%\Domination Game\p2dead.dat" goto win
if "%players%"=="2" if "%player%"=="2" if exist "%game%\Domination Game\p1dead.dat" goto win
if "%players%"=="3" if "%player%"=="1" if exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p3dead.dat" goto win
if "%players%"=="3" if "%player%"=="2" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p3dead.dat" goto win
if "%players%"=="3" if "%player%"=="3" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p2dead.dat" goto win
if "%players%"=="4" if "%player%"=="1" if exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p3dead.dat" if exist "%game%\Domination Game\p4dead.dat" goto win
if "%players%"=="4" if "%player%"=="2" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p3dead.dat" if exist "%game%\Domination Game\p4dead.dat" goto win
if "%players%"=="4" if "%player%"=="3" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p4dead.dat" goto win
if "%players%"=="4" if "%player%"=="4" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p3dead.dat" goto win
choice /c:wsadqefvx /n /m ""
if "%errorlevel%"=="1" goto up
if "%errorlevel%"=="2" goto down
if "%errorlevel%"=="3" goto left
if "%errorlevel%"=="4" goto right
if "%errorlevel%"=="5" goto tleft
if "%errorlevel%"=="6" goto tright
if "%errorlevel%"=="7" goto fire
if "%errorlevel%"=="8" goto view
if "%errorlevel%"=="9" goto dead
goto main
:fire
set fire=y
set range=0
set x15x13=@
set x16x13=@
set x17x13=@
set x16x12=@
set bx=%px%
set by=%py%
goto main
:bullet
if "%range%"=="6" goto render
set /a range+=1
if "%turn%"=="1" set /a by-=1
if "%turn%"=="2" set /a bx+=1
if "%turn%"=="3" set /a by+=1
if "%turn%"=="4" set /a bx-=1
echo set zone=%%m%bx%m%by%%%>"temp.bat"
call "temp.bat"
if "%zone%"=="#" goto render
if "%zone%"=="1" echo set /a life-=20>>"%game%\Domination Game\p1d.bat"&goto render
if "%zone%"=="2" echo set /a life-=20>>"%game%\Domination Game\p2d.bat"&goto render
if "%zone%"=="3" echo set /a life-=20>>"%game%\Domination Game\p3d.bat"&goto render
if "%zone%"=="4" echo set /a life-=20>>"%game%\Domination Game\p4d.bat"&goto render
goto bullet
:up
if "%turn%"=="1" set /a py-=1
if "%turn%"=="2" set /a px+=1
if "%turn%"=="3" set /a py+=1
if "%turn%"=="4" set /a px-=1
echo set zone=%%m%px%m%py%%%>"temp.bat"
call "temp.bat"
if not "%zone%"=="." if "%turn%"=="1" set /a py+=1
if not "%zone%"=="." if "%turn%"=="2" set /a px-=1
if not "%zone%"=="." if "%turn%"=="3" set /a py-=1
if not "%zone%"=="." if "%turn%"=="4" set /a px+=1
goto render
:down
if "%turn%"=="1" set /a py+=1
if "%turn%"=="2" set /a px-=1
if "%turn%"=="3" set /a py-=1
if "%turn%"=="4" set /a px+=1
echo set zone=%%m%px%m%py%%%>"temp.bat"
call "temp.bat"
if not "%zone%"=="." if "%turn%"=="1" set /a py-=1
if not "%zone%"=="." if "%turn%"=="2" set /a px+=1
if not "%zone%"=="." if "%turn%"=="3" set /a py+=1
if not "%zone%"=="." if "%turn%"=="4" set /a px-=1
goto render
:left
if "%turn%"=="1" set /a px-=1
if "%turn%"=="2" set /a py-=1
if "%turn%"=="3" set /a px+=1
if "%turn%"=="4" set /a py+=1
echo set zone=%%m%px%m%py%%%>"temp.bat"
call "temp.bat"
if not "%zone%"=="." if "%turn%"=="1" set /a px+=1
if not "%zone%"=="." if "%turn%"=="2" set /a py+=1
if not "%zone%"=="." if "%turn%"=="3" set /a px-=1
if not "%zone%"=="." if "%turn%"=="4" set /a py-=1
goto render
:right
if "%turn%"=="1" set /a px+=1
if "%turn%"=="2" set /a py+=1
if "%turn%"=="3" set /a px-=1
if "%turn%"=="4" set /a py-=1
echo set zone=%%m%px%m%py%%%>"temp.bat"
call "temp.bat"
if not "%zone%"=="." if "%turn%"=="1" set /a px-=1
if not "%zone%"=="." if "%turn%"=="2" set /a py-=1
if not "%zone%"=="." if "%turn%"=="3" set /a px+=1
if not "%zone%"=="." if "%turn%"=="4" set /a py+=1
goto render
:tleft
set /a turn-=1
if "%turn%"=="0" set turn=4
goto render
:tright
set /a turn+=1
if "%turn%"=="5" set turn=1
goto render
:win
set /a score+=%players%-1
echo set score=%score% >"save.bat"
echo set renderdistance=%renderdistance% >>"save.bat"
cls
echo You Have won
echo ----------------------
timeout /t 5 >nul
goto closegame
:view
cls
set input=0
echo Domination Game
echo ---------------------------
type "%game%\Squirrel 1-D engine\lobby.dat"
echo Map: %map%
echo ---------------------------
echo 1 = Back
set /p input=INPUT:
if "%input%"=="1" goto render
goto view
:dead
if "%players%"=="1" goto win
if "%players%"=="2" if "%player%"=="1" if exist "%game%\Domination Game\p2dead.dat" goto win
if "%players%"=="2" if "%player%"=="2" if exist "%game%\Domination Game\p1dead.dat" goto win
if "%players%"=="3" if "%player%"=="1" if exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p3dead.dat" goto win
if "%players%"=="3" if "%player%"=="2" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p3dead.dat" goto win
if "%players%"=="3" if "%player%"=="3" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p2dead.dat" goto win
if "%players%"=="4" if "%player%"=="1" if exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p3dead.dat" if exist "%game%\Domination Game\p4dead.dat" goto win
if "%players%"=="4" if "%player%"=="2" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p3dead.dat" if exist "%game%\Domination Game\p4dead.dat" goto win
if "%players%"=="4" if "%player%"=="3" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p4dead.dat" goto win
if "%players%"=="4" if "%player%"=="4" if exist "%game%\Domination Game\p1dead.dat" if exist "%game%\Domination Game\p2dead.dat" if exist "%game%\Domination Game\p3dead.dat" goto win
echo.>"%game%\Domination Game\p%player%dead.dat"
set /a score-=1
echo set score=%score% >"save.bat"
echo set renderdistance=%renderdistance% >>"save.bat"
cls
echo You Have Been killed!
echo ------------------------
timeout /t 5 >nul
goto gameoptions
:closegame
del "%game%\Domination Game\p1.bat"
del "%game%\Domination Game\p1d.bat"
del "%game%\Domination Game\p1dead.dat"
del "%game%\Domination Game\p2.bat"
del "%game%\Domination Game\p2d.bat"
del "%game%\Domination Game\p2dead.dat"
del "%game%\Domination Game\p3.bat"
del "%game%\Domination Game\p3d.bat"
del "%game%\Domination Game\p3dead.dat"
del "%game%\Domination Game\p4.bat"
del "%game%\Domination Game\p4d.bat"
del "%game%\Domination Game\p4dead.dat"
del "%game%\Domination Game\players.bat"
del "%game%\Domination Game\lobby.dat"
del "%game%\Domination Game\start.dat"
del "%game%\Domination Game\map.bat"
rd "%game%\Domination Game"
goto gameoptions
:nogame
cls
echo Connection To Game Has Been Lost!
echo ---------------------------------
timeout /t 3 >nul
goto gameoptions
