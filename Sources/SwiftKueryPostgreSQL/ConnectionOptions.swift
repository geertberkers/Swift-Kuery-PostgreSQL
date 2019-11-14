/**
 Copyright IBM Corporation 2016
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

// MARK: ConnectionOptions

/// Configuration options to be passed to PostgreSQL server.
public enum ConnectionOptions {
    /// The command-line options to be sent to the server.
    case options(String)
    /// The database name.
    case databaseName(String)
    /// The user name.
    case userName(String)
    /// The user password.
    case password(String)
    /// The maximum wait for connection in seconds. Zero or not specified means wait indefinitely.
    case connectionTimeout(Int)
    /// SSL Mode
    case sslmode(SSLMode)
}

public enum SSLMode {
    /// Will attempt only an unencrypted SSL connection
    case disable
    /// Will negotiate, trying first a non-SSL connection, then if that fails, trying an SSL connection
    case allow
    /// Will negotiate, trying first an SSL connection, then if that fails, trying a regular non-SSL connection
    case prefer
    /// Will try only an SSL connection
    case require
}
