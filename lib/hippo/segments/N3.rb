module Hippo::Segments
  class N3 < Hippo::Segments::Base

    segment_identifier 'N3'

    field :name                 => 'AddressLine1',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 55,
          :required             => true,
          :data_element_number  => 166

    field :name                 => 'AddressLine2',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 55,
          :required             => false,
          :data_element_number  => 166
    field :name                 => 'AddressLine3',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 55,
          :required             => false,
          :data_element_number  => 166
  end
end
