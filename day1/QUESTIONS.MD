1. How much is the current memory capacity of a canister?

        The curent memory capacity of a canister is 256TB.


2. 

#Problem detected

We can't use the ":=" operator to increment the value of the "counter" variable. In Motoko the ":=" operator is used for variable re-assignment, not for incrementing the value.

#Possible solution:

    actor {
        let counter : Nat = 0;
        public func increment_counter() : async () {
             counter += 1;
         };
    }



3.

#Problem detected

In the first line, it's trying to assign an integer value (0) to a variable of type Text. 

#Possible solution:

    actor {
        var message : Text = "";
        public query func change_message(new_message : Text) : async () {
            message := new_message;
            return;
        };
  
        public query func see_message() : async Text {
            return(message);
        };
    }


4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.
            
            False
