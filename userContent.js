/* jshint esversion: 6 */
// https://github.com/0x1f415/userContent.css/
const font = 'Menlo';
const fg = '#4183C4' ;
const theme = 'monokai';
const bg = '#101010';

const bg_gradient = '-moz-linear-gradient(' + ['to bottom', bg, bg].join(',') + ')';

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
		'github-tab-color': {
			'repo': 'https://github.com/StylishThemes/GitHub-Selected-Tab-Color',
			'entry': 'github-selected-tab-color.css'
		},
		'stackexchange-dark': {
			'repo': 'https://github.com/StylishThemes/StackOverflow-Dark',
			'entry': 'stackoverflow-dark.css',
			'build.json': {
				'theme'   : 'tomorrow-night',
				'color'   : fg,
				'visited' : fg,
				'font'    : font,
				'image'   : bg_gradient,
				'tiled'   : false,
				'attach'  : 'no',
				'webkit'  : false
			}
		},
		'wikipedia-dark': {
			'repo': 'https://github.com/StylishThemes/Wikipedia-Dark',
			'entry': 'wikipedia-dark.css',
			'build.json': {
				"color"   : fg,
				"visited" :	fg,
				"image"   : bg_gradient,
				"tiled"   : false,
				"attach"  : 'no',
				"webkit"  : false
			},
			'fixes': {
				'footer': '\n}\n'
			}
		},
		'slack-dark': {
			'repo': 'https://github.com/laCour/slack-night-mode',
			'entry': 'css/black.css',
		},
		'google-dark': {
			'repo': 'https://github.com/Nass-O/DarkSearch',
			'entry': 'DarkSearch.css'
		},
		'youtube-dark': {
			'repo': 'https://github.com/Nass-O/DarkTube',
			'entry': 'DarkTube.css',
			'fixes': {
				'header': '@-moz-document regexp("https?://apis.google.com/.*/hovercard.*"), regexp("https?://www.youtube.(com|([a-z]{2}))(.[a-z]{2})?/((\\\\?|channel|results|feed|playlist|feature|watch|user|hovercard|upload|my_videos|view_all_playlists|subscription_manager|dashboard|subscribers|c|#|messages|analytics|index).*)"), regexp("https?://www.youtube.(com|([a-z]{2}))(.[a-z]{2})?."), regexp("https?://apis.google.com/u/b/.*") {\n\n',
				'footer': '\n}\n'
			}
		}
	},
	'userstyles': [
		'https://userstyles.org/styles/115066/searx-me-dark',
		'https://userstyles.org/styles/97767/dark-twitter-customizable',
		'https://userstyles.org/styles/123263/dark-rap-genius-old-color-scheme',
		'https://userstyles.org/styles/120493/dark-night-myanimelist',
		'https://userstyles.org/styles/133817/darker-userstyles-org',
		'https://userstyles.org/styles/124570/tvtropes-dark-2016'
	]
};
