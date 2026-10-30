@echo off
echo =========================================================================
echo Practical 11: Launching Docker Compose Full-Stack Application
echo =========================================================================
echo 1. Building and starting all containers (frontend, backend, mongodb)...
docker compose up --build -d

echo.
echo 2. Checking container status...
docker compose ps

echo.
echo =========================================================================
echo Services are now online!
echo Frontend: http://localhost:5173
echo Backend:  http://localhost:5000/api/health
echo MongoDB:  localhost:27017
echo =========================================================================
pause

