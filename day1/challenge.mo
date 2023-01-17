import Bool "mo:base/Bool";
actor {

  // Multiply
  public query func multiply(n : Nat, m : Nat) : async Nat {
  return (n * m);
  };
};

actor {

    //volume
    public query func volume(n : Nat) : async Nat {
        return (n * n * n);
    }
}

actor {
    
    //hours_to_minutes
    public query func hours_to_minutes(h : Nat) : async Nat {
        return h * 60;
    }
}

actor{

    //set_counter & get_counter
    public query func set_counter(n : Nat) : async () {
        set_counter = n ;
    };
    public query func get_counter() : async Nat {
        return set_counter;
    }
}

actor{

    //test_divide
    public query func test_divide(n: Nat, m: Nat) : async Bool {
        return m % n == 0;
    }
}

actor{

    //is_even
    public query func is_even(n: Nat) : async Bool {
        return n % 2 == 0;
    }
}