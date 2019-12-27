#!/bin/sh
if [ ! -d oshpark ]; then
    mkdir oshpark
fi

cp gerber/diode-or-F_Cu.gbr         oshpark/diode-or.gtl
cp gerber/diode-or-B_Cu.gbr         oshpark/diode-or.gbl
cp gerber/diode-or-F_Mask.gbr       oshpark/diode-or.gts
cp gerber/diode-or-B_Mask.gbr       oshpark/diode-or.gbs
cp gerber/diode-or-F_SilkS.gbr      oshpark/diode-or.gto
cp gerber/diode-or-B_SilkS.gbr      oshpark/diode-or.gbo
cp gerber/diode-or-Edge_Cuts.gbr    oshpark/diode-or.gko
cp gerber/diode-or.drl              oshpark/diode-or.xln

rm oshpark.zip

(cd oshpark && zip ../oshpark.zip *)
