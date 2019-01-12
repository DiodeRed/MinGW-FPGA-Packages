#!/usr/bin/bash
set -e
THISPATH="$(cd "$(dirname "$BASH_SOURCE")"; pwd)"
cd "$THISPATH"

function updatePkg() {
	cd "${THISPATH}/${1}"
	makepkg-mingw -s -i --noconfirm
	makepkg-mingw --allsource || true
	cd "$THISPATH"
}

updatePkg icestorm
updatePkg nextpnr-ice40

updatePkg iverilog
updatePkg yosys

updatePkg migen

updatePkg verilator

updatePkg python3-bitarray
updatePkg python3-pyvcd
updatePkg nmigen
