# what image to use
FROM python3.12.4-slim

# 1st what file to copy
# 2nd where to copy
COPY requirements.txt .

# run the pip install command to install dependecy inside the image
RUN pip install -r requirements.txt

# add the source code into the image
# take all the files and copies them into the image
COPY app.py .

# what command to run when the image  is executed inside a container
CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]