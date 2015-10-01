'use strict';

/**
 *	OffSetFilter 
 */

MyApp.filter('OffSetFilter', function() {
	return function(trains, start, end) {
		return trains.slice(start, end);
	};
});

