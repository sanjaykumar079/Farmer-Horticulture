# PowerShell script to create folder structure for farmer-horticulture-interface
New-Item -ItemType Directory -Force -Path "farmer-horticulture-interface"
Set-Location -Path "farmer-horticulture-interface"

# Frontend directories and files
New-Item -ItemType Directory -Force -Path "frontend/public", "frontend/src/components", "frontend/src/pages", "frontend/src/utils"
New-Item -ItemType File -Force -Path "frontend/public/index.html"
New-Item -ItemType File -Force -Path "frontend/src/components/IssueReport.js", "frontend/src/components/Predict.js", "frontend/src/components/Chat.js"
New-Item -ItemType File -Force -Path "frontend/src/pages/Home.js", "frontend/src/pages/Report.js", "frontend/src/pages/Predict.js", "frontend/src/pages/Dashboard.js"
New-Item -ItemType File -Force -Path "frontend/src/utils/api.js", "frontend/src/utils/speech.js"
New-Item -ItemType File -Force -Path "frontend/src/App.js", "frontend/src/index.js", "frontend/src/styles.css"
New-Item -ItemType File -Force -Path "frontend/package.json", "frontend/vercel.json", "frontend/.gitignore"

# Backend directories and files
New-Item -ItemType Directory -Force -Path "backend/api/routes", "backend/api/models", "backend/services", "backend/core"
New-Item -ItemType File -Force -Path "backend/api/routes/issues.py", "backend/api/routes/predict.py", "backend/api/routes/chat.py"
New-Item -ItemType File -Force -Path "backend/api/models/issue.py", "backend/api/models/prediction.py"
New-Item -ItemType File -Force -Path "backend/services/ai_service.py", "backend/services/scraper.py"
New-Item -ItemType File -Force -Path "backend/core/config.py", "backend/core/database.py", "backend/core/auth.py"
New-Item -ItemType File -Force -Path "backend/main.py", "backend/requirements.txt", "backend/Dockerfile", "backend/.gitignore"

# AI directories and files
New-Item -ItemType Directory -Force -Path "ai/crop_disease", "ai/rasa/data"
New-Item -ItemType File -Force -Path "ai/crop_disease/model.pth", "ai/crop_disease/model.tflite", "ai/crop_disease/train_cnn.py"
New-Item -ItemType File -Force -Path "ai/rasa/data/nlu.yml", "ai/rasa/data/stories.yml", "ai/rasa/data/rules.yml", "ai/rasa/data/domain.yml"
New-Item -ItemType File -Force -Path "ai/rasa/config.yml", "ai/convert_tflite.py", "ai/requirements.txt"

# Scripts directories and files
New-Item -ItemType Directory -Force -Path "scripts"
New-Item -ItemType File -Force -Path "scripts/deploy_vercel.sh", "scripts/deploy_aws.sh", "scripts/setup_db.sh"

# Tests directories and files
New-Item -ItemType Directory -Force -Path "tests"
New-Item -ItemType File -Force -Path "tests/test_frontend.js", "tests/test_backend.py", "tests/test_ai.py"

# Docs directories and files
New-Item -ItemType Directory -Force -Path "docs"
New-Item -ItemType File -Force -Path "docs/prd.md", "docs/api.md"

# Root files
New-Item -ItemType File -Force -Path "README.md", ".gitignore", "docker-compose.yml"

Write-Host "Folder structure created successfully!"