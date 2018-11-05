baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec	
			project: 'Zinc' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: #'bleedingEdge';
					loads: #('REST' );
					repository: 'http://mc.stfx.eu/ZincHTTPComponents' ];
			baseline: 'ExceptionReport' with: [ 
				 spec 
					repository: 'github://noha/pharo-toolbox/source'].

		spec package: #'RestStack-Zinc' with: [
			spec requires: #( 'Zinc' ) ].
		spec package: #'RestStack-Exception' with: [
			spec requires: #( 'RestStack-Zinc' 'ExceptionReport' ) ].
		spec package: #'Zinc-HTTP-Examples' with: [
			spec requires: #( 'Zinc' ) ].
		spec 
			group: 'default' with: #(#'RestStack-Zinc' #'Zinc-HTTP-Examples');
			group: 'exception' with: #(#'RestStack-Zinc' #'RestStack-Exception' ) ].
