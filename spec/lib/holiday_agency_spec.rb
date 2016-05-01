require './lib/holiday_agency'

describe 'Holiday Agency' do

  before do
    # https://www.relishapp.com/rspec/rspec-mocks/v/3-4/docs/verifying-doubles/using-a-class-double
    @villas_service  = class_double(VillasService).as_stubbed_const(:transfer_nested_constants => true)
    @flights_service = class_double(FlightsService).as_stubbed_const(:transfer_nested_constants => true)
  end

  context 'when flights are available' do
    context 'and villas are not available' do
      it 'returns no villas' do
        expect(@villas_service).to(
          receive(:check_availability).with(26, 2011).
            and_return([])
        )

        expect(@flights_service).to(
          receive(:check_availability).with(26, 2011, 'LHR', 'PFO').
            and_return(true)
        )

        expect(HolidayAgency.new(26, 2011, 'LHR', 'PFO').available_villas).to be_empty
      end
    end
  end

  context 'when villas are available' do
    context 'and flights are not available' do
      it 'returns no villas' do
        expect(@villas_service).to(
          receive(:check_availability).with(26, 2011).
            and_return(['London Villa'])
        )

        expect(@flights_service).to(
          receive(:check_availability).
            with(26, 2011, 'LHR', 'PFO').and_return(false)
        )

        expect(
          HolidayAgency.new(26, 2011, 'LHR', 'PFO').available_villas
        ).to be_empty
      end
    end

    context 'and flights are available' do
      it 'returns available villas' do
        expect(@villas_service).to(
          receive(:check_availability).with(26, 2011).
            and_return(['London Villa'])
        )

        expect(@flights_service).to(
          receive(:check_availability).with(26, 2011, 'LHR', 'PFO').
            and_return(true)
        )

        expect(HolidayAgency.new(26, 2011, 'LHR', 'PFO').available_villas).to eq ['London Villa']
      end
    end
  end
end
