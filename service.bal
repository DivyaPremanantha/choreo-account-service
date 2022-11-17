import ballerina/http;
import ballerina/time;
# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for getting account information.
    # 
    # + return - account information.
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

    # A resource for getting transaction information.
    # 
    # + return - transaction information.
    resource function get transactions() returns json|error {

        json transactionResponse = 
        {
        "Data": {
            "Transaction": [
            {
                "AccountId": "12345678",
                "TransactionId": "123",
                "TransactionReference": "Ref 1",
                "Amount": {
                "Amount": "10.00",
                "Currency": "GBP"
                },
                "CreditDebitIndicator": "Credit",
                "BookingDateTime": "2017-04-05T10:43:07+00:00",
                "ValueDateTime": "2017-04-05T10:45:22+00:00",
                "TransactionInformation": "Cash from Aubrey",
                "ProprietaryBankTransactionCode": {
                "Code": "Transfer",
                "Issuer": "AlphaBank"
                },
                "Balance": {
                "Amount": {
                    "Amount": "230.00",
                    "Currency": "GBP"
                },
                "CreditDebitIndicator": "Credit",
                "Type": "InterimBooked"
                }
            }
            ]
        }
        };
        return transactionResponse;       
    }
}
