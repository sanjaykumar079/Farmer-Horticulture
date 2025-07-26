from fastapi import APIRouter, UploadFile, File
from services.ai_service import predict_disease
import boto3
from core.config import settings

router = APIRouter()

@router.post("/predict")
async def predict(file: UploadFile = File(...)):
    s3 = boto3.client('s3', aws_access_key_id=settings.AWS_ACCESS_KEY_ID, aws_secret_access_key=settings.AWS_SECRET_ACCESS_KEY)
    s3.upload_fileobj(file.file, settings.S3_BUCKET, file.filename)
    prediction = predict_disease(file.filename)
    return {"prediction": prediction}