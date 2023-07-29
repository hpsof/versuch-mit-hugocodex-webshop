@echo off


for /f %%G in ('git rev-parse --short HEAD') do Set HUGOxPARAMSxGITxLAST_COMMITxHASH=%%G

git log -1 --format=%%%an  >> out.tmp
for /f "tokens=1 delims=:" %%G in (out.tmp) do set HUGOxPARAMSxGITxLAST_COMMITxAUTHORNAME=%%G
del out.tmp

git log -1 --format=%%%cI  >> out.tmp
for /f "tokens=1 delims=:" %%G in (out.tmp) do set HUGOxPARAMSxGITxLAST_COMMITxDATE=%%G
del out.tmp

git log -1 --format=%%%s  >> out.tmp
for /f "tokens=1 delims=:" %%G in (out.tmp) do set HUGOxPARAMSxGITxLAST_COMMITxSUBJECT=%%G
del out.tmp

echo. -----------------------------------------------------
echo. hash .....: %HUGOxPARAMSxGITxLAST_COMMITxHASH%
echo. authorname: %HUGOxPARAMSxGITxLAST_COMMITxAUTHORNAME%
echo. date .....: %HUGOxPARAMSxGITxLAST_COMMITxDATE%
echo. subject   : %HUGOxPARAMSxGITxLAST_COMMITxSUBJECT%
echo.
echo. *** finito ***

