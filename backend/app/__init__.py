from flask import Flask
# from mongoengine import connect, disconnect
from app.config import config_by_name
# from flask_cors import CORS
# import cloudinary


def create_app(config_name="development"):
    app = Flask(__name__, static_folder='static', static_url_path='/static')
    app.config.from_object(config_by_name[config_name])

    # disconnect()
    # connect(**app.config['MONGODB_SETTINGS'])
    # Initialize JWTManager
    # jwt = JWTManager(app)

    # cors_config = {
    #     "origins": ["http://localhost:5000", "http://127.0.0.1:5000"],
    #     "methods": ["GET", "POST", "PUT", "DELETE", "PATCH", "OPTIONS"],
    #     "allow_headers": ["Content-Type", "Authorization"],
    #     "expose_headers": ["X-Total-Count", "X-Page", "X-Per-Page"],
    #     "credentials": True
    # }
    # CORS(app, resources={r"/api/*": cors_config})

    # Register blueprints
    from app.api import api_bp
    app.register_blueprint(api_bp, url_prefix='/api')

    # Register error handlers
    from app.utils.error_handlers import register_error_handlers
    register_error_handlers(app)

    # cloudinary.config(
    #     cloud_name=app.config.get('CLOUDINARY_CLOUD_NAME'),
    #     api_key=app.config.get('CLOUDINARY_API_KEY'),
    #     api_secret=app.config.get('CLOUDINARY_API_SECRET')
    # )"

    return app
