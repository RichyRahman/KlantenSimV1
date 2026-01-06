using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KlantenSimulatorBL.Interfaces
{
    public class SqlNameProvider : INameProvider
    {
        private readonly string _connectionString;
        public SqlNameProvider(string connectionString) 
        {
            _connectionString = connectionString;
        }
        public string GetRandomFirstName(string countryCode)
        {
            const string sql = @"
                SELECT TOP 1 Name
                FROM FirstName f
                JOIN Country c ON f.CountryId = c.CountryId
                WHERE c.IsoCode = @Country
                ORDER BY NEWID()";

            return ExecuteScalar(sql, countryCode);
        }

        public string GetRandomLastName(string countryCode)
        {
            const string sql = @"
                SELECT TOP 1 Name
                FROM LastName l
                JOIN Country c ON l.CountryId = c.CountryId
                WHERE c.IsoCode = @Country
                ORDER BY NEWID()";

            return ExecuteScalar(sql, countryCode);
        }

        private string ExecuteScalar(string sql, string countryCode)
        {
            using var conn = new SqlConnection(_connectionString);
            using var cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@Country", countryCode);

            conn.Open();
            return (string)cmd.ExecuteScalar();
        }
    }
}
