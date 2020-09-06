class Movie < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  has_and_belongs_to_many :actors
  has_many :reviews


  # ElasticSearch Index
  settings index: {number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :title
    end
  end

end
