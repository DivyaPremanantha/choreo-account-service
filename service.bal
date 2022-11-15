import ballerina/http;
import ballerina/time;
# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for getting account information
    # + return - string account number
    resource function get accounts() returns json|error {

        json accountResponse = 
        {
        "Data":{
            "Account":[
                {
                    "AccountId":"30080012343456",
                    "Status":"Enabled",
                    "StatusUpdateDateTime": time:utcToString(time:utcNow()),
                    "Currency":"GBP",
                    "AccountType":"Personal",
                    "AccountSubType":"CurrentAccount",
                    "Nickname":"Bills",
                    "OpeningDate":"2020-12-16T06:06:06+00:00",
                    "MaturityDate":"2025-04-16T06:06:06+00:00",
                    "Account":[
                    {
                        "SchemeName":"SortCodeAccountNumber",
                        "Identification":"30080012343456",
                        "Name":"Alex Karter",
                        "SecondaryIdentification":"00021"
                    }
                    ]
                }
            ]
        }
        };
        return accountResponse;       
    }


    resource function get transactions() returns json|error {

        json transactionResponse = 
        {
        "Data":{
            "Transaction":[
                {
                    "AccountId":"30080012343456",
                    "Status":"Enabled",
                    "StatusUpdateDateTime": time:utcToString(time:utcNow()),
                    "Currency":"GBP",
                    "AccountType":"Personal",
                    "AccountSubType":"CurrentAccount",
                    "Nickname":"Bills",
                    "OpeningDate":"2020-12-16T06:06:06+00:00",
                    "MaturityDate":"2025-04-16T06:06:06+00:00",
                    "Account":[
                    {
                        "SchemeName":"SortCodeAccountNumber",
                        "Identification":"30080012343456",
                        "Name":"Alex Karter",
                        "SecondaryIdentification":"00021"
                    }
                    ]
                }
            ]
        }
        };
        return transactionResponse;       
    }
}
