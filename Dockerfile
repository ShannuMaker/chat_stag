FROM python:3.14

WORKDIR /app

# Copy your files into the container
COPY . .

# Install your requirements
RUN pip install -r requirements.txt

# Run your app on port 7860
# (Example using Gunicorn. Change this if you use Uvicorn, Waitress, etc.)
CMD ["uvicorn", "--bind", "0.0.0.0:7860", "main:app"]
