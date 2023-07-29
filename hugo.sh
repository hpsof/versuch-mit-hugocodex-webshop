#!/bin/sh

export HUGOxPARAMSxGITxLAST_COMMITxAUTHORNAME=$(git log -1 --format=%an)
export HUGOxPARAMSxGITxLAST_COMMITxDATE=$(git log -1 --format=%cI)
export HUGOxPARAMSxGITxLAST_COMMITxHASH=$(git rev-parse --short HEAD)
export HUGOxPARAMSxGITxLAST_COMMITxSUBJECT=$(git log -1 --format=%s)
echo -------------------------------------
echo $HUGOxPARAMSxGITxLAST_COMMITxAUTHORNAME
echo $HUGOxPARAMSxGITxLAST_COMMITxDATE
echo $HUGOxPARAMSxGITxLAST_COMMITxHASH
echo $HUGOxPARAMSxGITxLAST_COMMITxSUBJECT
echo -------------------------------------

hugo serve --disableFastRender --noHTTPCache  --cleanDestinationDir


