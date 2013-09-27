module Hippo::TransactionSets
  module HIPAA_834

    class Base < Hippo::TransactionSets::Base

      #Transaction Set Header
      segment Hippo::Segments::ST,
              :name          => 'Transaction Set Header',
              :minimum       => 1,
              :maximum       => 1,
              :position      => 100,
              :identified_by => {
                  'ST01' => '834'
              }

      segment Hippo::Segments::BGN,
              :name          => 'Beginning Segment',
              :minimum       => 1,
              :maximum       => 1,
              :position      => 200,
              :identified_by => {
                  'BGN01' => %w[00 15 22]
              }

      segment Hippo::Segments::REF,
              :name          => 'Transaction Set Policy Number',
              :minimum       => 0,
              :maximum       => 1,
              :position      => 300,
              :identified_by => {
                  'REF01' => '38'
              }

      segment Hippo::Segments::DTP,
              :name          => 'File Effective Date',
              :minimum       => 0,
              :maximum       => 99999,
              :position      => 400,
              :identified_by => {
                  'DTP01' => %w[007 090 091 303 382 388]
              }

      segment Hippo::Segments::QTY,
              :name     => 'Dependent Total',
              :minimum  => 0,
              :maximum  => 3,
              :position => 600,
              :identified_by => {
                  'QTY01' => %w[DT ET TO]
              }

      loop Hippo::TransactionSets::HIPAA_834::L1000A,
           :name          => 'Sponsor Name',
           :minimum       => 1,
           :maximum       => 1,
           :position      => 700,
           :identified_by => {
               'N1.N101' => 'P5',
               'N1.N103' => %w[24 94 FI]
           }

      loop Hippo::TransactionSets::HIPAA_834::L1000B,
           :name          => 'Payer',
           :minimum       => 1,
           :maximum       => 1,
           :position      => 700,
           :identified_by => {
               'N1.N101' => 'IN',
               'N1.N103' => %w[94 XV FI]
           }

      loop Hippo::TransactionSets::HIPAA_834::L1000C,
           :name          => 'TPA/Broker Name',
           :minimum       => 0,
           :maximum       => 2,
           :position      => 700,
           :identified_by => {
               'N1.N101' => %w[BO TV],
               'N1.N103' => %w[94 XV FI]
           }


      loop Hippo::TransactionSets::HIPAA_834::L2000,
           :name     => 'Member Level Detail',
           :minimum  => 0,
           :maximum  => 99999,
           :position => 100


      segment Hippo::Segments::SE,
              :name     => 'Transaction Set Trailer',
              :minimum  => 1,
              :maximum  => 1,
              :position => 6900
    end
  end
end
