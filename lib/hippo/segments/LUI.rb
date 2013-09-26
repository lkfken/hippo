module Hippo::Segments
  class LUI < Hippo::Segments::Base

    segment_identifier 'LUI'

    field :name                 => 'IdentificationCodeQualifier',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 66

    field :name                 => 'IdentificationCode',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 2,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 67

    field :name                 => 'Description',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'UseOfLanguageIndicator',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1303

    field :name                 => 'LanguageProficiencyIndicator',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1476

  end
end
