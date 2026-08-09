@echo off
cd /d "%~dp0"
echo Iniciando o servidor local dos Jogos da Bibel...
start "Servidor Jogos da Bibel - feche esta janela quando terminar de testar" cmd /k python -m http.server 8791
timeout /t 2 /nobreak >nul
start "" http://localhost:8791/jogo/
