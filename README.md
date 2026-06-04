# Desi Movie Aggregator

A Python-based web application for aggregating and displaying Desi (Indian, Pakistani, Bangladeshi) movies from multiple sources.

## Project Structure

```
desi-movie-aggregator/
├── src/                          # Main source code
│   ├── api/                      # Flask API application
│   │   ├── app.py               # Flask app factory
│   │   └── routes/              # API route blueprints
│   │       └── movies.py        # Movie endpoints
│   ├── scrapers/                # Movie scraper modules
│   │   └── base_scraper.py      # Base scraper class
│   ├── models/                  # Data models
│   │   └── movie.py             # Movie model
│   ├── database/                # Database utilities
│   │   └── db.py                # Database connection
│   ├── config.py                # Configuration management
│   └── __init__.py              # Package init
├── tests/                        # Test suite
│   ├── test_api.py              # API tests
│   └── test_models.py           # Model tests
├── main.py                       # Application entry point
├── requirements.txt              # Python dependencies
├── .env.example                  # Example environment variables
├── .gitignore                    # Git ignore rules
├── Makefile                      # Make commands
└── README.md                     # This file
```

## Setup

### Prerequisites

- Python 3.8+
- pip (Python package manager)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/rgopav/desi-movie-aggregator.git
cd desi-movie-aggregator
```

2. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
make install
# or
pip install -r requirements.txt
```

4. Create environment file:
```bash
cp .env.example .env
```

## Usage

### Run the application:
```bash
make run
# or
python main.py
```

The API will be available at `http://localhost:5000`

## Development

### Running Tests
```bash
make test
```

### Code Formatting
```bash
make format
```

### Linting
```bash
make lint
```

### Clean Up
```bash
make clean
```

## Configuration

Edit `.env` file to configure:
- `DEBUG` - Debug mode (True/False)
- `DATABASE_URL` - Database connection string
- `API_HOST` - API host address
- `API_PORT` - API port number
- `REQUEST_TIMEOUT` - Scraper request timeout
- `RETRY_ATTEMPTS` - Scraper retry attempts

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT License - see LICENSE file for details

## TODO

- [ ] Implement movie scraper for sources
- [ ] Set up database models with SQLAlchemy
- [ ] Complete API endpoints
- [ ] Add user authentication
- [ ] Add movie ratings and reviews
- [ ] Deploy to production
