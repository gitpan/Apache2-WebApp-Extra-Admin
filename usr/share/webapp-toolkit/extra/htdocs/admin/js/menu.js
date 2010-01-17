/*
 *  Apache2::WebApp::Toolkit - Admin Control Panel (menu.js)
 *  Copyright (C) 2010 Marc S. Brooks <mbrooks@cpan.org>
 *
 *  Licensed under the terms of the BSD License
 *  http://www.opensource.org/licenses/bsd-license.php
 */

var menu_total;

function viewOptions(mode) {
	var obj = document.getElementById(mode);

	if (obj.style.display == 'block') {
		obj.style.display = 'none';

		delCookie('last');
	}
	else {
		resetMenu();

		obj.style.display = 'block';

		setCookie('last', mode);
	}
}

function loadMenu(total) {
	var last = getCookie('last');

	menu_total = total;

	if (last) {
		viewOptions(last);
	}
	else {
		viewOptions('menu_1');
	}
}

function resetMenu() {
	for ( var i = 1; i <= menu_total; i++ ) {
		document.getElementById( 'menu_' + i ).style.display = 'none';
	}
}
