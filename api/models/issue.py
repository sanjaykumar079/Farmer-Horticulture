from pydantic import BaseModel

class Issue(BaseModel):
    description: str
    file_url: str = None