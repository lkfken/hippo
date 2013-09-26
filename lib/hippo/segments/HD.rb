module Hippo::Segments
  class HD < Hippo::Segments::Base

    segment_identifier 'HD'

    field :name                => 'MaintenanceTypeCode',
          :sequence            => 1,
          :datatype            => :list,
          :minimum             => 3,
          :maximum             => 3,
          :required            => true,
          :data_element_number => 875

    field :name                => 'MaintenanceReasonCode',
          :sequence            => 2,
          :datatype            => :list,
          :minimum             => 2,
          :maximum             => 3,
          :required            => false,
          :data_element_number => 1203

    field :name                => 'InsuranceLineCode',
          :sequence            => 3,
          :datatype            => :list,
          :minimum             => 2,
          :maximum             => 3,
          :required            => false,
          :data_element_number => 1205

    field :name     => 'PlanCoverageDescription',
          :sequence => 4,
          :datatype => :string,
          :minimum  => 1,
          :maximum  => 50,
          :required => false

    field :name                => 'CoverageLevelCode',
          :sequence            => 5,
          :datatype            => :list,
          :minimum             => 3,
          :maximum             => 3,
          :required            => false,
          :data_element_number => 1207

    field :name                => 'Count1',
          :sequence            => 6,
          :datatype            => :decimal,
          :minimum             => 1,
          :maximum             => 9,
          :required            => false,
          :data_element_number => 380

    field :name                => 'Count2',
          :sequence            => 7,
          :datatype            => :decimal,
          :minimum             => 1,
          :maximum             => 9,
          :required            => false,
          :data_element_number => 380

    field :name                => 'UnderwritingDecisionCode',
          :sequence            => 8,
          :datatype            => :string,
          :minimum             => 1,
          :maximum             => 1,
          :required            => false,
          :data_element_number => 1209

    field :name                => 'YesNoConditionOrResponseCode',
          :sequence            => 9,
          :datatype            => :list,
          :minimum             => 1,
          :maximum             => 1,
          :required            => false,
          :data_element_number => 1073

    field :name                => 'DrugHouseCode',
          :sequence            => 10,
          :datatype            => :list,
          :minimum             => 2,
          :maximum             => 3,
          :required            => false,
          :data_element_number => 1211

    field :name                => 'YesNoConditionOrResponseCode',
          :sequence            => 11,
          :datatype            => :list,
          :minimum             => 1,
          :maximum             => 1,
          :required            => false,
          :data_element_number => 1073
  end

end
