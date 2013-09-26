module Hippo::Segments
  class ACT < Hippo::Segments::Base

    segment_identifier 'ACT'

    field :name                 => 'AccountNumber',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => true,
          :data_element_number  => 508

    field :name                 => 'Name',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 93

    field :name                 => 'IdentificationCodeQualifier',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 66

    field :name                 => 'IdentificationCode',
          :sequence             => 4,
          :datatype             => :string,
          :minimum              => 2,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 67

    field :name                 => 'AccountNumberQualifier',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 569

    field :name                 => 'AccountNumber',
          :sequence             => 6,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 508

    field :name                 => 'Description',
          :sequence             => 7,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'PaymentMethodTypeCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 107

    field :name                 => 'BenefitStatusCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1216

  end
end
