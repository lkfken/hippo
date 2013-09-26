module Hippo::Segments
  class IDC < Base

    segment_identifier  'IDC'

    field   :name                 => 'PlanCoverageDescription',
            :sequence             => 1,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => true,
            :data_element_number  => 1204

    field   :name                 => 'IdentificationCardTypeCode',
            :sequence             => 2,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => true,
            :data_element_number  => 1215

    field   :name                 => 'Quantity',
            :sequence             => 3,
            :datatype             => :integer,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

    field   :name                 => 'ActionCode',
            :sequence             => 4,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 306
  end
end
