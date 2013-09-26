module Hippo::TransactionSets
  module HIPAA_834

    class L2750 < Hippo::TransactionSets::Base
      loop_name 'L2750' #Header Number

      segment Hippo::Segments::N1,
              :name     => 'Reporting Category',
              :minimum  => 0,
              :maximum  => 1,
              :position => 6882

      segment Hippo::Segments::REF,
              :name     => 'Reporting Category Reference',
              :minimum  => 0,
              :maximum  => 16,
              :position => 6883

      segment Hippo::Segments::DTP,
              :name     => 'Reporting Category Date',
              :minimum  => 0,
              :maximum  => 1,
              :position => 6884

    end
  end
end
