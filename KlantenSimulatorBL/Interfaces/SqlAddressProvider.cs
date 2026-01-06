using KlantenSimulatorBL.Domein;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KlantenSimulatorBL.Interfaces
{
    public class SqlAddressProvider : IAddressProvider
    {
        private readonly string _connectionString;

        public SqlAddressProvider(string connectionString)
        {
            _connectionString = connectionString;
        }

        public Address GetRandomAddress(string countryCode)
        {
            const string sql = @"
                SELECT TOP 1
                    s.Name AS Street,
                    m.Name AS Municipality,
                    c.IsoCode AS Country
                FROM Street s
                JOIN Municipality m ON s.MunicipalityId = m.MunicipalityId
                JOIN Country c ON m.CountryId = c.CountryId
                WHERE c.IsoCode = @Country
                ORDER BY NEWID()";

            using var conn = new SqlConnection(_connectionString);
            using var cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@Country", countryCode);

            conn.Open();
            using var reader = cmd.ExecuteReader();
            reader.Read();

            return new Address(
                reader["Street"].ToString(),
                reader["Municipality"].ToString(),
                reader["Country"].ToString()
            );
        }
    }
}
