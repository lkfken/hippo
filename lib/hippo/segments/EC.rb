module Hippo::Segments
  class EC < Hippo::Segments::Base

    segment_identifier 'EC'

    field :name                 => 'EmploymentClassCode1',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1176

    field :name                 => 'EmploymentClassCode2',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1176

    field :name                 => 'EmploymentClassCode3',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1176

    field :name                 => 'PercentageAsDecimal',
          :sequence             => 4,
          :datatype             => :decimal,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 954

    field :name                 => 'InformationStatusCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1201

    field :name                 => 'OccupationCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 4,
          :maximum              => 6,
          :required             => false,
          :data_element_number  => 1149

  end
end
