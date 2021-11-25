CREATE TABLE users(userID INT NOT NULL AUTO_INCREMENT, username VARCHAR(255) NOT NULL, password VARCHAR(255) NOT NULL, privateKey VARCHAR(4096) NOT NULL, publicKey VARCHAR(4096) NOT NULL, PRIMARY KEY (userID));
CREATE TABLE contacts(sendingUserID INT NOT NULL, receivingUserID INT NOT NULL, PRIMARY KEY (sendingUserID, receivingUserID));
CREATE TABLE messages(messageID INT NOT NULL AUTO_INCREMENT, sendingUserID INT NOT NULL, receivingUserID INT NOT NULL, message TEXT(65525) NOT NULL, PRIMARY KEY (messageID), FOREIGN KEY (sendingUserID, receivingUserID) REFERENCES contacts(sendingUserID, receivingUserID));