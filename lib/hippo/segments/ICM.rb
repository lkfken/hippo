module Hippo::Segments
  class ICM < Base

    segment_identifier  'ICM'

    field   :name                 => 'FrequencyCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => true,
            :data_element_number  => 594

    field   :name                 => 'MonetaryAmount',
            :sequence             => 2,
            :datatype             => :decimal,
            :minimum              => 1,
            :maximum              => 18,
            :required             => true,
            :data_element_number  => 782

    field   :name                 => 'Quantity',
            :sequence             => 3,
            :datatype             => :decimal,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

    field   :name                 => 'LocationIdentifier',
            :sequence             => 4,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 310

    field   :name                 => 'SalaryGrade',
            :sequence             => 5,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 5,
            :required             => false,
            :data_element_number  => 1214

    field   :name                 => 'CurrencyCode',
            :sequence             => 6,
            :datatype             => :list,
            :minimum              => 3,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 100
  end
end
