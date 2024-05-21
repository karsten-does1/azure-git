@echo off
docker build -t demo-site .
docker run --name demo-site-container -d -p 81:80 demo-site