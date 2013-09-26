module Hippo::TransactionSets
  module HIPAA_834

    class L2100E < Hippo::TransactionSets::Base
      loop_name 'L2100E' #Header Number

      segment Hippo::Segments::NM1,
              :name => 'Member School'

      segment Hippo::Segments::PER,
              :name => 'Member School Communications Numbers'

      segment Hippo::Segments::N3,
              :name => 'Member School Mail Street Address'

      segment Hippo::Segments::N4,
              :name => 'Member School Mail City, State, ZIP code'

    end
  end
end
