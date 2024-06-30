/**
 * 
 */

function closeDialog() {
	document.getElementById('error-dialog').classList.add('hidden');
}

document.addEventListener('DOMContentLoaded', () => {
	const errorDialog = document.getElementById('error-dialog');
	if (errorDialog) {
		errorDialog.classList.remove('hidden');
	}
});