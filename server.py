from fastapi import FastAPI, Form
from fastapi.responses import HTMLResponse, JSONResponse, FileResponse
import pyodbc
from openai import AsyncOpenAI
import json





client = AsyncOpenAI( api_key = "Put your key here")
messages = []

try:
    with open("./messages.json", "r") as file:
        messages = json.load(file)
except Exception as e:
    print(f"Error loading messages from file")



async def send_prompt(prompt):
    global messages
    global client
    
    # Add the user prompt to messages
    messages.append({"role": "user", "content": prompt})
        
    # Send prompt to GPT-3.5 Turbo
    response = await client.chat.completions.create(
        model="gpt-3.5-turbo", #gpt-4o
        messages=messages
    )
        
    # Get the assistant's reply
    reply = response.choices[0].message.content
    messages.append({"role": "assistant", "content": reply})
        
    try:
        with open("./messages.json", "w") as file:
            json.dump(messages, file, indent="\t")
    except Exception as e:
        print(f"Error saving messages to file")
    
    return reply
        


app = FastAPI()

# Database connection details
DB_CONNECTION_STRING = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=LAPTOP-UQ5APIB5;DATABASE=PharmaDB;Trusted_Connection=yes;"

@app.get("/favicon.ico")
async def get_favicon():
    return FileResponse("./logo.ico")

@app.get("/", response_class=HTMLResponse)
async def read_root():
    # Serve the HTML file
    with open("index.html", "r", encoding="utf-8") as file:
        html_content = file.read()
    return HTMLResponse(content=html_content)


@app.post("/search", response_class=JSONResponse)
async def search(query: str = Form(...)):
    resultsJson = []
    resultsHtml = []

    with pyodbc.connect(DB_CONNECTION_STRING) as conn:
        cursor = conn.cursor()
        print("SET NOCOUNT ON;exec SmartSearch '"+query+"'")
        cursor.execute("SET NOCOUNT ON;exec SmartSearch '"+query+"'")
        resultsJson = [row[0] for row in cursor.fetchall()]

    for e in resultsJson:
        resultsHtml.append(await send_prompt(e))

    return {"html_reports": resultsHtml}
        
