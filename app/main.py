from fastapi import FastAPI

app = FastAPI(
    title="Engineer 101 Vibe Coding API",
    description="Starter Web API for containerization labs",
    version="1.0.0"
)

@app.get("/")
def read_root():
    return {
        "status": "online",
        "message": "Welcome to Engineer 101 Vibe Coding API!",
        "framework": "FastAPI + Docker",
        "lab_instructions": "Edit this response in app/main.py to test Docker live volume hot-reloading!"
    }

@app.get("/health")
def health_check():
    return {"status": "healthy", "database": "connected"}
