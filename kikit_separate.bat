Pushd "%~dp0"
call "C:\Program Files\KiCad\8.0\bin\kicad-cmd.bat"
popd
mkdir kikit-separate-export

kikit separate --source "annotation; ref: B1" --stripAnnotations pss.kicad_pcb kikit-separate-export/pss_baseboard.kicad_pcb
kikit separate --source "annotation; ref: B2" --stripAnnotations pss.kicad_pcb kikit-separate-export/pss_outstageboard.kicad_pcb

