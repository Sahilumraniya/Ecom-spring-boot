/** @type {import('tailwindcss').Config} */
module.exports = {
	content: [
		'./src/main/webapp/WEB-INF/views/**/*.jsp', // adjust this path if needed

	],
	theme: {
		extend: {},
	},
	plugins: [],
	variants: {
		extend: {
			backgroundColor: ['active', 'hover'],
			textColor: ['active', 'hover'],
			textDecoration: ['active', 'hover'],
			// Add other variants as needed
		},
	},
}

