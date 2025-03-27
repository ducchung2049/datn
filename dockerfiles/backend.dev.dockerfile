FROM python:3.11-slim

# Set Python-specific environment variables
ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PYTHONPATH="/app:$PYTHONPATH"

# Create a non-root user
RUN addgroup --system appgroup && \
    adduser --system --ingroup appgroup appuser

WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install uv
RUN pip install --no-cache-dir uv

# Copy dependency files
COPY --chown=appuser:appgroup backend/pyproject.toml backend/uv.lock ./

# Install dependencies using uv
#RUN uv pip install --system -r requirements.txt
RUN uv sync --quiet --frozen

# Switch to non-root user
USER appuser

EXPOSE 5000

# Health check
#HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
#    CMD curl -f http://localhost:5000/health || exit 1
