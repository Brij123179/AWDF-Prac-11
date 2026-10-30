#!/usr/bin/env bash
echo "========================================================================="
echo "Practical 11: Launching Docker Compose Full-Stack Application"
echo "========================================================================="
docker compose up --build -d
docker compose ps
echo "Services online:"
echo "Frontend: http://localhost:5173"
echo "Backend:  http://localhost:5000/api/health"

