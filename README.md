# Movie Search

Application with Rails 5 and ElasticSearch.
# DB

# Usage

##### Download Elasticsearch

    wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.3.zip
    unzip elasticsearch-6.2.3.zip

##### Enter the application folder and run bundle install

    bundle install

##### Run migrations

    rails db:migrate

##### Configure ElasticSearch

Open config/elasticsearch.yml and change your elasticsearch binary path if needed.

##### Add example data

First start your elasticsearch server so that the data can be indexed while it is created. You can start your elasticsearch server by running:

    elasticsearch-6.2.3/bin/elasticsearch

Now run the seed script to import the dataset

    rails db:seed
    Movie.__elasticsearch__.create_index!
    Movie.__elasticsearch__.create_index! force: true
    Movie.import force: true 

##### Run the server

    rails s

#### API

**Url**: *GET /api/v1/movies*

**Params:** q=[string] **optional**

**Example request:** *GET /api/v1/movies?q=60*

