class Actor < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  has_and_belongs_to_many :movies


  # ElasticSearch Index
  settings index: {number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :name
    end
  end

end
