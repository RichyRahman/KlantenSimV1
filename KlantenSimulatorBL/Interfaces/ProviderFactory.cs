using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KlantenSimulatorBL.Interfaces
{
    public static class ProviderFactory
    {
        public static INameProvider CreateNameProvider(
        string countryCode,
        string connectionString,
        string jsonNamePath)
        {
            return countryCode switch
            {
                "PL" or "CZ" => new JsonNameProvider(jsonNamePath),
                _ => new SqlNameProvider(connectionString)
            };
        }

        public static IAddressProvider CreateAddressProvider(
            string countryCode,
            string connectionString,
            string jsonAddressPath)
        {
            return countryCode switch
            {
                "PL" or "CZ" => new JsonAddressProvider(jsonAddressPath),
                _ => new SqlAddressProvider(connectionString)
            };
        }
    }
}
