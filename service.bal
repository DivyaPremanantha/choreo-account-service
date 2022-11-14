import ballerina/http;
import ballerina/random;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for getting account information
    # + return - string account number
    resource function get accounts() returns string|error {
        int accountNumber = check random:createIntInRange(1, 10000);
        return accountNumber.toString();       
    }
}
