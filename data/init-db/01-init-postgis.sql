-- Enable PostGIS extensions for air quality spatial data
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS postgis_topology;
CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;
CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder;

-- Create additional extensions that might be useful for air quality data
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS btree_gist;

-- Grant permissions to the application user
GRANT ALL PRIVILEGES ON DATABASE air_quality_db TO air_quality_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO air_quality_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO air_quality_user;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO air_quality_user;
GRANT USAGE ON SCHEMA public TO air_quality_user;

-- Create indexes for better performance with spatial queries
-- These will be created after your models are migrated 