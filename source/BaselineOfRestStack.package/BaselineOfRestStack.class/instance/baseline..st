baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec	
			project: 'Zinc' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: '2.8.3';
					loads: #('REST' );
					repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].

		spec package: #'RestHelper'.
		spec 
			group: 'helper' with: #(#'RestHelper' ) ].
