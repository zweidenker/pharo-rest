baselines
zinc: spec

	spec 
		baseline: 'ZincHTTPComponents' with: [ 
			spec 
				loads: #('REST' 'Zinc-HTTP-Examples');
				repository: 'github://svenvc/zinc/repository']