@echo off
set vimexe=C:\Program Files (x86)\Vim\vim91\vim.exe
set gvimexe=C:\Program Files (x86)\Vim\vim91\gvim.exe
set MYVIMRC=C:\Users\Ilya_Gordeev\YandexDisk-z101.1100\repos\vimfiles\vimrc
set srvExists=no

for /F %%I in ('"%vimexe%" -u "%MYVIMRC%" --serverlist') do set srvExists=yes

if "%srvExists%"=="no" start "" "%gvimexe%" -u "%MYVIMRC%" --servername GVIM 
if "%srvExists%"=="no" exit

"%gvimexe%" --servername GVIM --remote-send "<ESC>:tabnew<CR>"
"%gvimexe%" --servername GVIM --remote-send "<ESC>:sil call foreground()<CR>"
