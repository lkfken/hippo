module Hippo::TransactionSets
  module HIPAA_834

    class L2100A < Hippo::TransactionSets::Base
      loop_name 'L2100A' #Header Number

      segment Hippo::Segments::NM1,
              :name          => 'Member Name',
              :minimum       => 1,
              :maximum       => 1,
              :position      => 100,
              :identified_by => {
                  'NM101' => %w[74 IL]
              }
      segment Hippo::Segments::PER,
              :name => 'Member Communications Numbers'

      segment Hippo::Segments::N3,
              :name => 'Member Residence Street Address'

      segment Hippo::Segments::N4,
              :name => 'Member City, State, ZIP Code'

      segment Hippo::Segments::DMG,
              :name => 'Member Demographics'

      segment Hippo::Segments::EC,
              :name => 'Employment Class'
      segment Hippo::Segments::ICM,
              :name => 'Member Income'
      segment Hippo::Segments::AMT,
              :name => 'Member Policy Amounts'
      segment Hippo::Segments::HLH,
              :name => 'Member Health Information'
      segment Hippo::Segments::LUI,
              :name => 'Member Language'
    end
  end
end
