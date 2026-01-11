// five friends
// 100 dollar bill
// one person - 30 dollar
// second person - 70 dollar
// everybody gets 20 dollar bills each
// first person - 30 dollar - 20 dollar = 10 dollar
// second person - 70 dollar - 20dollar = 50 dollar
// remaining 3 persons bill - 60 dollar


// first get bills to pay for each persons = totalbill/persons
// substract bills of people that paid from equal bills
// get how much is owed for the people that paid

expenses_splitter() {
    List<Map<String, dynamic>> friends = [
  {
    'name': 'John Doe',
    'bill': 0,
  },
  {
    'name': 'Jane Doe',
    'bill': 25,
  },
  {
    'name': 'Ebuka 046',
    'bill': 100,
  },
  {
    'name': 'Oz idirozinma',
    'bill': 5,
  },
  {
    'name': '4pf joshua',
    'bill': 42,
  },
  {
    'name': 'atasa nwa',
    'bill': 75,
  }
];
    num totalBill = 0;
    for (var friendsMap in friends) {
        totalBill += friendsMap['bill'];
    }

    double equalBill = totalBill / friends.length;

    for (var billMap in friends) {
        if (billMap['bill'] == equalBill) {
            billMap['bill_to_pay'] = 0;
        }
        else if (billMap['bill'] == 0) {
            billMap['bill_to_pay'] = equalBill;
        } else if (billMap['bill'] >= 1 && billMap['bill'] < equalBill) {
            billMap['bill_to_pay'] = equalBill - billMap['bill'];
        } else {
            billMap['bill_to_pay'] = 0;
        }
    }

    for(var billMap in friends) {
        if (billMap['bill'] > equalBill) {
            billMap['bill_to_receive'] = billMap['bill'] - equalBill;
        } else {
            billMap['bill_to_receive'] = 0;
        }
    }

 
    print(totalBill);
    print(friends);
}