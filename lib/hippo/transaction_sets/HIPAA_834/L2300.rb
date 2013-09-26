module Hippo::TransactionSets
  module HIPAA_834

    class L2300 < Hippo::TransactionSets::Base
      loop_name 'L2300' #Header Number

      segment Hippo::Segments::HD,
              :name          => 'Health Coverage',
              :minimum       => 0,
              :maximum       => 1,
              :position      => 2600,
              :identified_by => {
                  'HD01' => %w[001 002 021 024 025 026 030 032]
              }

      segment Hippo::Segments::DTP,
              :name          => 'Health Coverage Date',
              :minimum       => 1,
              :maximum       => 6,
              :position      => 2700,
              :identified_by => {
                  'DTP01' => %w[300 303 343 348 349 543 695]
              }
      segment Hippo::Segments::AMT,
              :name          => 'Health Coverage Policy',
              :minimum       => 0,
              :maximum       => 9,
              :position      => 2800,
              :identified_by => {
                  'AMT01' => %w[B9 CA D2 EBA FK P3 R]
              }
      segment Hippo::Segments::REF,
              :name          => 'Health Coverage Policy Number',
              :minimum       => 0,
              :maximum       => 14,
              :position      => 2800,
              :identified_by => {
                  'REF01' => %w[17 1L 9V CE E8 M7 PID RB X9 XM XX1 XX2 ZX ZZ]
              }
      segment Hippo::Segments::REF,
              :name          => 'Prior Coverage Months',
              :minimum       => 0,
              :maximum       => 1,
              :position      => 2900,
              :identified_by => {
                  'REF01' => 'QQ'
              }
      segment Hippo::Segments::IDC,
              :name          => 'Identification Card',
              :minimum       => 0,
              :maximum       => 3,
              :position      => 3000,
              :identified_by => {
                  'IDC02' => %w[D H P],
                  'IDC04' => %w[1 2 RX]
              }
    end
  end
end
