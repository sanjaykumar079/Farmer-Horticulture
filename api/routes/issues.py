from fastapi import APIRouter, UploadFile, File, Form
from services.ai_service import process_speech
import boto3
from core.config import settings

router = APIRouter()

@router.post("/issues")
async def create_issue(description: str = Form(...), file: UploadFile = File(None)):
    if file:
        s3 = boto3.client('s3', aws_access_key_id=settings.AWS_ACCESS_KEY_ID, aws_secret_access_key=settings.AWS_SECRET_ACCESS_KEY)
        s3.upload_fileobj(file.file, settings.S3_BUCKET, file.filename)
    # Placeholder: Save to database
    return {"message": "Issue reported", "description": description}