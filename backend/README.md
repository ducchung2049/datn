# Traveloke

## Folder structure

```
backend/
├── app/
│   ├── __init__.py         # Application factory
│   ├── config.py           # Configuration classes
│   ├── extensions.py       # Flask extensions initialization
│   ├── api/                # API endpoints
│   │   ├── __init__.py
│   │   ├── v1/             # API versioning
│   │   └── v2/
│   ├── models/             # Database models
│   ├── services/           # Business logic
│   ├── schemas/            # Serialization/validation
│   └── utils/              # Helper functions
├── migrations/             # Database migrations
├── tests/                  # Test suite
│   ├── unit/
│   ├── integration/
│   └── conftest.py
├── scripts/                # Helper scripts
└── wsgi.py                 # WSGI entry point
```
