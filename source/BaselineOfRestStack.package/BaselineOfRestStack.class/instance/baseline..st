baselines
baseline: spec
	<baseline>

	self zinc: spec.
	spec for: #'common' do: [
		spec	
			baseline: 'ExceptionReport' with: [ 
				 spec 
					repository: 'github://noha/pharo-toolbox/source'].

		spec package: #'RestStack-Zinc' with: [
			spec requires: #( 'ZincHTTPComponents' ) ].
		spec package: #'RestStack-Exception' with: [
			spec requires: #( 'RestStack-Zinc' 'ExceptionReport' ) ].
		spec 
			group: 'default' with: #(#'RestStack-Zinc' );
			group: 'exception' with: #(#'RestStack-Zinc' #'RestStack-Exception' ) ].
