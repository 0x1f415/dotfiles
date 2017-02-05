/* jshint esversion: 6 */
// https://github.com/0x1f415/userContent.css/
const font = 'Menlo';
const fg = '#4183C4' ;
const theme = 'monokai';
module.exports = {
	'git': {
		'github-dark': {
			'repo': 'https://github.com/StylishThemes/GitHub-Dark.git',
			'entry': 'github-dark.css',
			'build.json': {
				'theme'    : theme,
				'color'    : fg,
				'font'     : font,
				'image'    : 'none',
				'tiled'    : true,
				'codeWrap' : false,
				'attach'   : 'scroll',
				'tab'      : 4,
				'webkit'   : false
			}
		},
		'stackexchange-dark': {
			'repo': 'https://github.com/StylishThemes/StackOverflow-Dark',
			'entry': 'stackoverflow-dark.css',
			'build.json': {
				'theme'   : 'tomorrow-night',
				'color'   : fg,
				'visited' : fg,
				'font'    : font,
				'image'   : 'none',
				'tiled'   : false,
				'attach'  : 'scroll',
				'webkit'  : false
			}
		},
		'wikipedia-dark': {
			'repo': 'https://github.com/StylishThemes/Wikipedia-Dark',
			'entry': 'wikipedia-dark.css',
			'build.json': {
				"color"   : fg,
				"visited" :	fg,
				"image"   : 'none',
				"tiled"   : false,
				"attach"  : "scroll",
				"webkit"  : false
			},
			'grunt': 'user'
		}
	},
	'userstyles': [
		'https://userstyles.org/styles/115066/searx-me-dark',
		'https://userstyles.org/styles/117673/darktube'
	]
};
