const gulp = require("gulp");
const shell = require("gulp-shell");
const path = require("path");
const fs = require("fs");

const DB_NAME = "shine"; // Your database name
const DB_USER = "root";  // WAMP default MySQL user
const DB_PASS = "";      // Leave empty if no password
const BACKUP_DIR = "backup"; // Directory to store backups
const BACKUP_FILE = path.join(BACKUP_DIR, "backup.sql");

// ✅ Set the MySQL binary path for WAMP (Update if your path is different)
const MYSQL_BIN_PATH = `C:\\wamp64\\bin\\mysql\\mysql8.3.0\\bin\\`;

// ✅ Ensure the backup directory exists before running commands
function ensureBackupDir(done) {
    if (!fs.existsSync(BACKUP_DIR)) {
        fs.mkdirSync(BACKUP_DIR, { recursive: true });
        console.log(`✅ Created backup directory: ${BACKUP_DIR}`);
    }
    done();
}

// ✅ Task to dump (export) the database with FULL data, triggers, constraints, and procedures
gulp.task("backup-db", gulp.series(ensureBackupDir, shell.task([
    `${MYSQL_BIN_PATH}mysqldump -u ${DB_USER} ${DB_PASS ? `-p${DB_PASS}` : ""} --routines --triggers --events --single-transaction --quick --lock-tables=false ${DB_NAME} > ${BACKUP_FILE}`
])));

// ✅ Task to restore (import) the database with FULL dump
gulp.task("restore-db", shell.task([
    `${MYSQL_BIN_PATH}mysql -u ${DB_USER} ${DB_NAME} < ${BACKUP_FILE}`
]));

// ✅ Default task (backup & restore)
gulp.task("default", gulp.series("backup-db", "restore-db"));
