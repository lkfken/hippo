module Hippo::Segments
  class HLH < Hippo::Segments::Base

    segment_identifier 'HLH'

    field :name                 => 'HealthRelatedCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1212

    field :name                 => 'Height',
          :sequence             => 2,
          :datatype             => :decimal,
          :minimum              => 1,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 65

    field :name                 => 'Weight1',
          :sequence             => 3,
          :datatype             => :decimal,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 81

    field :name                 => 'Weight2',
          :sequence             => 4,
          :datatype             => :decimal,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 81

    field :name                 => 'Description',
          :sequence             => 5,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'CurrentHealthConditionCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1213

    field :name                 => 'Description',
          :sequence             => 7,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352
  end
end
