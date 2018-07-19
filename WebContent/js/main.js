function validate() {
	// Store the password field objects into variables ...
	var pass1 = document.getElementById('pass1');
	var pass2 = document.getElementById('pass2');
	// Store the Confirmation Message Object ...
	var message = document.getElementById('confirmMessage');
	// Set the colors we will be using ...
	var goodColor = "#66cc66";
	var badColor = "#ff6666";
	// Compare the values in the password field
	// and the confirmation field
	if (pass1.value == pass2.value) {
		// The passwords match.
		// Set the color to the good color and inform
		// the user that they have entered the correct password
		pass2.style.backgroundColor = goodColor;
		message.style.color = goodColor;

		var message2 = document.getElementById('message1');
		message2.innerHTML = "Passwords Match!"

		/* message.innerHTML = "Passwords Match!" */
	} else {
		// The passwords do not match.
		// Set the color to the bad color and
		// notify the user.
		pass2.style.backgroundColor = badColor;
		message.style.color = badColor;
		var message2 = document.getElementById('message1');
		message2.innerHTML = "Passwords Do Not Match!"

		/* message.innerHTML = "Passwords Do Not Match!" */
	}
}

function validate1() {
	// Store the password field objects into variables ...
	var pass1 = document.getElementById('cpass1');
	var pass2 = document.getElementById('cpass2');
	// Store the Confirmation Message Object ...
	var message = document.getElementById('confirmMessage');
	// Set the colors we will be using ...
	var goodColor = "#66cc66";
	var badColor = "#ff6666";
	// Compare the values in the password field
	// and the confirmation field
	if (pass1.value == pass2.value) {
		// The passwords match.
		// Set the color to the good color and inform
		// the user that they have entered the correct password
		pass2.style.backgroundColor = goodColor;
		message.style.color = goodColor;

		var message2 = document.getElementById('message1');
		message2.innerHTML = "Passwords Match!"

		/* message.innerHTML = "Passwords Match!" */
	} else {
		// The passwords do not match.
		// Set the color to the bad color and
		// notify the user.
		pass2.style.backgroundColor = badColor;
		message.style.color = badColor;
		var message2 = document.getElementById('message1');
		message2.innerHTML = "Passwords Do Not Match!"

		/* message.innerHTML = "Passwords Do Not Match!" */
	}
}
