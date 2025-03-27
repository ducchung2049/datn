from flask import jsonify


def register_error_handlers(app):
    @app.errorhandler(400)
    def bad_request(e):
        return jsonify({"error": "Bad Request", "message": str(e)}), 400

    @app.errorhandler(404)
    def not_found(e):
        return jsonify({"error": "Not Found", "message": str(e)}), 404

    @app.errorhandler(500)
    def server_error(e):
        return jsonify({"error": "Internal Server Error", "message": str(e)}), 500

    @app.errorhandler(ValidationError)
    def validation_error(e):
        return jsonify({"error": "Validation Error", "message": e.json()}), 400


class ValidationError(Exception):
    """Exception raised for validation errors"""
    pass
