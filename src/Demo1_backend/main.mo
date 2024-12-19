import Array "mo:base/Array";
import Nat64 "mo:base/Nat64";

actor {
  
  public type Mail_id = {
    mailId:Text;
  };
  
  public type userdetails = {
      name :Text;
      phno:Nat64;
      email:Text;
  };

  var user_personal_details:[userdetails] = [] ;

  var usermails:[Mail_id] = [];

  public func adduserDetails( det :userdetails ): async Text{
        user_personal_details := Array.append<userdetails>(user_personal_details ,[det] );
        return "seuccessfully entered";
  };

  public shared query func getallusers(): async [userdetails]{
    return user_personal_details;
  };

    public func addUsermail(mail:Mail_id): async Text {
      usermails :=Array.append<Mail_id>(usermails, [mail]);
      return "Registered successfully"
    };

    public shared query func getAllMails(): async [Mail_id] {
      return usermails;
    };

    public shared query func CheckLogin_By_Mail(mailId:Text): async ?Mail_id{
      return Array.find<Mail_id>(usermails , func x=x.mailId == mailId);
    };


};
