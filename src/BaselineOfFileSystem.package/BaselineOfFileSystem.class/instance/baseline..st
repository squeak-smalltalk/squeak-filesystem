baseline
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [spec
				package: 'FS-Core';
				
				package: 'FS-Disk'
				with: [spec requires: #('FS-Core')];
				
				package: 'FS-Memory'
				with: [spec requires: #('FS-Core')];
				
				package: 'FS-AnsiStreams'
				with: [spec requires: #('FS-Core')];
				
				package: 'FS-Tests-Core';
				
				package: 'FS-Tests-Disk'
				with: [spec requires: #('FS-Tests-Core')];
				
				package: 'FS-Tests-Memory'
				with: [spec requires: #('FS-Tests-Core')];
				
				package: 'FS-Tests-AnsiStreams'
				with: [spec requires: #('FS-Tests-Core')];
				
				package: 'FS-FileDirectory-Adapters'
				with: [spec requires: #('FS-Core')].
			
			spec
				 group: 'default' with: #('FS-Core' 'FS-Disk' 'FS-Memory' 'FS-AnsiStreams' 'FS-FileDirectory-Adapters');
				 group: 'tests' with: #('default' 'FS-Tests-Core' 'FS-Tests-Disk' 'FS-Tests-Memory' 'FS-Tests-AnsiStreams')]