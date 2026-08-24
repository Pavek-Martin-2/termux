@echo off

set d=%DATE%
echo %d%

set t=%TIME%
echo %t%

set c=_

set e=%d%%c%%t%
echo %e%

REM echo %TIME:~0,-1%
REM echo %TIME:~0,-1%

REM substrings takto
set x=%TIME:~1,-3%
echo %x%

set den=%DATE:~0,-8%
echo %den%

set mes=%DATE:~3,-5%
echo %mes%

REM set rok=%DATE:~6%

set rok=%DATE:~8%
echo %rok%

set datum=%den%%mes%%rok%
echo %datum%

set hod=%TIME:~0,-9%
echo %hod%

set min=%TIME:~3,-6%
echo %min%

set cas=%hod%%min%
echo %cas%

set y=%datum%%cas%
echo %y%

set ted=%datum%%c%%cas%
echo %ted%




pause
