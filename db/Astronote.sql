-- Create a new database called  astronote'
CREATE DATABASE IF NOT EXISTS Astronote;

USE Astronote;

-- Users 
CREATE TABLE IF NOT EXISTS User (
    userID INT AUTO_INCREMENT PRIMARY KEY, 
    Username VARCHAR(64) NOT NULL UNIQUE,
    PasswordHash BINARY(64) NOT NULL, -- Storing Hashes
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Storing Timestamps
)

-- Note
CREATE TABLE IF NOT EXISTS Note (
    noteID INT AUTO_INCREMENT PRIMARY KEY, 
    note TEXT NOT NULL, -- This will be encryped in the future
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

-- Normalizes the Many to Many relationship that Users and Notes have!
CREATE TABLE IF NOT EXISTS UserToNote (
    userID INT NOT NULL,
    noteID INT NOT NULL,
    PRIMARY KEY (userID, noteID),
    FOREIGN KEY (userID) REFERENCES User(userID) ON DELETE CASCADE,
    FOREIGN KEY (noteID) REFERENCES Note(noteID) ON DELETE CASCADE
)

