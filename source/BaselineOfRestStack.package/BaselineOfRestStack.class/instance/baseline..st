baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'ZincHTTPComponents' with: [ 
				spec 
					loads: #('REST' 'Zinc-HTTP-Examples');
					repository: 'github://zweidenker/zinc/repository'];
			baseline: 'ExceptionReport' with: [ 
				spec 
					repository: 'github://noha/pharo-toolbox/source'].

		spec package: #'RestStack-Zinc' with: [
			spec requires: #( 'Zinc' ) ].
		spec package: #'RestStack-Exception' with: [
			spec requires: #( 'RestStack-Zinc' 'ExceptionReport' ) ].

		spec 
			group: 'default' with: #(#'RestStack-Zinc');
			group: 'exception' with: #(#'default' #'RestStack-Exception' ) ].
