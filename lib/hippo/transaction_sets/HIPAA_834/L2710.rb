module Hippo::TransactionSets
  module HIPAA_834

    class L2710 < Hippo::TransactionSets::Base
      loop_name 'L2710' #Header Number

      segment Hippo::Segments::LX,
              :name          => 'Assigned Number',
              :minimum       => 0,
              :maximum       => 1,
              :position      => 6881
      loop Hippo::TransactionSets::HIPAA_834::L2750,
           :name     => 'Reporting Category',
           :minimum  => 0,
           :maximum  => 1,
           :position => 6882
    end
  end
end
