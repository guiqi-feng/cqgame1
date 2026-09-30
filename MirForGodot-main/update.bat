@echo off
set SERVER=guiqi@100.125.101.45
set BUILD_DIR=/home/guiqi/mir2

echo [1/3] 上传新可执行文件...
scp "C:\Users\Administrator\Documents\ChatGPT\cqgame1\MirForGodot-main\engine\release\engine.x86_64" guiqi@100.125.101.45:~/mir2/engine/


echo [2/3] 重新构建并启动容器...
ssh %SERVER% "cd %BUILD_DIR% && docker compose up -d --build engine"

echo [3/3] 完成！