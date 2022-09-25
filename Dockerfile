# build stage
FROM python:3.10 AS builder

# install PDM
RUN pip install -U pip setuptools wheel
RUN pip install pdm

WORKDIR /project
# copy project files in
COPY . .

# Install deps in ./__pypackages__ as per PEP 582
RUN pdm config python.use_venv False && pdm install --prod --no-lock --no-editable

# Base production image on minimalist chainguard image
FROM cgr.dev/chainguard/python:latest

# Tell the interpreter where to look to resolve import statements.
ENV PYTHONPATH=/home/nonroot/project/mysite/__pypackages__/3.10/lib

# Retrieve packages from build stage
COPY --from=builder /project/__pypackages__ /home/nonroot/project/mysite/__pypackages__
# Copy in the code as well
COPY --from=builder /project/mysite /home/nonroot/project/mysite
COPY --from=builder /project/server.py /home/nonroot/project/mysite/server.py

WORKDIR /home/nonroot/
# Run the process with a nonroot user
USER nonroot
# Run the app with Waitress:
CMD ["python", "project/mysite/server.py"]

