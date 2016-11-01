<?php

$server_name = filter_input(INPUT_SERVER, 'SERVER_NAME', FILTER_SANITIZE_URL);
define('BASE_PATH', realpath(dirname(__FILE__)));
/* Setup constants for local server and remote server */
define('EMAIL_HOST', 'email_provider');
define('EMAIL_USERNAME', 'email_username');
define('EMAIL_PASSWORD', 'email_password');
define('EMAIL_ADDRESS', 'john.smith@example.com');
define('EMAIL_PORT', 587);
define('PRIVATE_KEY', 'your_private_key');
if (filter_input(INPUT_SERVER, 'SERVER_NAME', FILTER_SANITIZE_URL) == "localhost") {
    define('DATABASE_HOST', 'localhost');
    define('DATABASE_NAME', 'database name');
    define('DATABASE_USERNAME', 'local user name --- usually root');
    define('DATABASE_PASSWORD', 'local_password');
    define('DATABASE_TABLE', 'database table');
} else {
    define('DATABASE_HOST', 'Internet Provider');
    define('DATABASE_NAME', 'remote database name');
    define('DATABASE_USERNAME', 'remote_username');
    define('DATABASE_PASSWORD', 'remote_password');
    define('DATABASE_TABLE', 'database table');
}
