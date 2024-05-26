@echo off
set vimexe=C:\Program Files (x86)\Vim\vim73\vim.exe
set gvimexe=C:\Program Files (x86)\Vim\vim73\gvim.exe
set srvExists=no

for /F %%I in ('"%vimexe%" --serverlist') do set srvExists=yes

if "%srvExists%"=="no" start "" "%gvimexe%" --servername GVIM 
if "%srvExists%"=="no" exit

"%gvimexe%" --servername GVIM --remote-send "<ESC>:tabnew<CR>"
"%gvimexe%" --servername GVIM --remote-send "<ESC>:sil call foreground()<CR>"
