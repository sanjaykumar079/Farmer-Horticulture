from fastapi import APIRouter, WebSocket
from services.ai_service import process_chat

router = APIRouter()

@router.websocket("/chat")
async def websocket_endpoint(websocket: WebSocket):
    await websocket.accept()
    while True:
        data = await websocket.receive_text()
        response = process_chat(data)
        await websocket.send_text(response)