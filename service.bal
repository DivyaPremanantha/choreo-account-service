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
                    "DisplayName": "Account_5",
                    "Status":"Enabled",
                    "StatusUpdateDateTime": time:utcToString(time:utcNow()),
                    "Currency":"GBP",
                    "AccountType":"Personal",
                    "AccountSubType":"CurrentAccount",
                    "Nickname":"Bills",
                    "OpeningDate":"2020-12-16T06:06:06+00:00",
                    "MaturityDate":"2025-04-16T06:06:06+00:00",
                    "Balance": "$4567.23",
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
                "TransactionId": "12323",
                "TransactionReference": "Food",
                "Amount": {
                "Amount": "900.00",
                "Currency": "GBP"
                },
                "CreditDebitIndicator": "Debit",
                "BookingDateTime": "2022-04-05T10:43:07+00:00",
                "ValueDateTime": "2022-04-05T10:45:22+00:00",
                "TransactionInformation": "Restaurant Bill",
                "ProprietaryBankTransactionCode": {
                "Code": "Transfer",
                "Issuer": "AlphaBank"
                },
                "Balance": {
                "Amount": {
                    "Amount": "1230.00",
                    "Currency": "GBP"
                },
                "CreditDebitIndicator": "Debit",
                "Type": "InterimBooked"
                }
            },
            {
                "AccountId": "10335678",
                "TransactionId": "456231",
                "TransactionReference": "Clothing",
                "Amount": {
                "Amount": "200.00",
                "Currency": "GBP"
                },
                "CreditDebitIndicator": "Debit",
                "BookingDateTime": "2022-05-05T10:43:07+00:00",
                "ValueDateTime": "2022-05-05T10:45:22+00:00",
                "TransactionInformation": "Purchased a Handbag",
                "ProprietaryBankTransactionCode": {
                "Code": "Transfer",
                "Issuer": "AlphaBank"
                },
                "Balance": {
                "Amount": {
                    "Amount": "1030.00",
                    "Currency": "GBP"
                },
                "CreditDebitIndicator": "Debit",
                "Type": "InterimBooked"
                }
            },
            {
                "AccountId": "10335678",
                "TransactionId": "62723",
                "TransactionReference": "Health",
                "Amount": {
                "Amount": "100.00",
                "Currency": "GBP"
                },
                "CreditDebitIndicator": "Debit",
                "BookingDateTime": "2017-04-05T10:43:07+00:00",
                "ValueDateTime": "2017-04-05T10:45:22+00:00",
                "TransactionInformation": "Medical checkup",
                "ProprietaryBankTransactionCode": {
                "Code": "Transfer",
                "Issuer": "AlphaBank"
                },
                "Balance": {
                "Amount": {
                    "Amount": "900.00",
                    "Currency": "GBP"
                },
                "CreditDebitIndicator": "Debit",
                "Type": "InterimBooked"
                }
            },
            {
                "AccountId": "10335678",
                "TransactionId": "80313",
                "TransactionReference": "Bills",
                "Amount": {
                "Amount": "90.00",
                "Currency": "GBP"
                },
                "CreditDebitIndicator": "Debit",
                "BookingDateTime": "2017-04-05T10:43:07+00:00",
                "ValueDateTime": "2017-04-05T10:45:22+00:00",
                "TransactionInformation": "Paid iCloud Subscription",
                "ProprietaryBankTransactionCode": {
                "Code": "Transfer",
                "Issuer": "AlphaBank"
                },
                "Balance": {
                "Amount": {
                    "Amount": "900.00",
                    "Currency": "GBP"
                },
                "CreditDebitIndicator": "Debit",
                "Type": "InterimBooked"
                }
            }
            ]
        }
        };
        return transactionResponse;       
    }
}
