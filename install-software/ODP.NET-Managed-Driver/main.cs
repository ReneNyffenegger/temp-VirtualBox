//
//   csc main.cs -r:Oracle.ManagedDataAccess.dll -out:main.exe
//

using System;
using Oracle.ManagedDataAccess.Client; 

static class Prg {

   public static void Main(string[] args) {
      // Connect
//    string constr = "User Id=rene;Password=rene;Data Source=Ora18";
      string constr = args[0];
      OracleConnection con = new OracleConnection(constr);
      con.Open();
 
      // Execute a SQL SELECT
      OracleCommand cmd = con.CreateCommand();
      cmd.CommandText = "select sysdate, global_name from global_name";
      OracleDataReader reader = cmd.ExecuteReader();
 
      // Print all employee numbers
      while (reader.Read()) {
        Console.WriteLine(reader.GetDateTime(0));
        Console.WriteLine(reader.GetString(1));
      }
 
      // Clean up
      reader.Dispose();
      cmd.Dispose();
      con.Dispose();

   }

}
