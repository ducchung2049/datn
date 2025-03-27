from flask import Blueprint

api_bp = Blueprint('api', __name__)

# Import and register v1 blueprint
from app.api.v1 import v1_bp
api_bp.register_blueprint(v1_bp, url_prefix='/v1')
