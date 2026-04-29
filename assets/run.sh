#!/bin/sh

cd $SNAP/
# ATOL .NET wrapper asks for "fptr10.dll" on Linux.
# Ensure compatible aliases exist for the ELF library.
if [ -f "./libfptr10.so" ]; then
  [ -e "./fptr10.dll" ] || ln -s "./libfptr10.so" "./fptr10.dll" 2>/dev/null || cp "./libfptr10.so" "./fptr10.dll"
  [ -e "./libfptr10.dll" ] || ln -s "./libfptr10.so" "./libfptr10.dll" 2>/dev/null || cp "./libfptr10.so" "./libfptr10.dll"
  [ -e "./libfptr10.dll.so" ] || ln -s "./libfptr10.so" "./libfptr10.dll.so" 2>/dev/null || cp "./libfptr10.so" "./libfptr10.dll.so"
fi
./1os.checkout start