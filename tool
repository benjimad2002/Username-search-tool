php
// Set the cross-domain cookie
setcookie("loggedIn", true);

// Store user information in the database
$sql = "INSERT INTO users (username) VALUES ('example_username')";
$result = mysqli_query($conn, $sql);

// Check for an existing account on the target website
$sql = "SELECT * FROM users WHERE username = 'example_username'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // User has an existing account, take appropriate action
} else {
    // User does not have an existing account, take other appropriate action
}
